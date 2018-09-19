library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;
use work.vga_package.all;

entity Hi_Datapath_Control_Unit is 
	port (
		CLOCK										: in std_logic;
		RESET_N									: in std_logic;
		TIME_1US									: in std_logic;
		ALIEN_BORDER_REACHED					: in direction_type;
		RAND_ALIEN_BORDER_REACHED 			: in direction_type;
		RAND_ALIEN_VISIBLE					: in std_logic;
		PLAYER_BORDER_REACHED				: in direction_type;
		LIVES										: in integer range 0 to PLAYER_LIVES;
		COLLISION								: in collision_type;
		RAND_GEN						   		: in std_logic_vector (RAND_ALIEN_GENERATION_TIME_BITS - 1 downto 0);
		COLUMN_CANNOT_SHOOT					: in std_logic;
		NO_BULLETS_TO_SHOOT					: in std_logic;
		BUTTON_LEFT								: in std_logic;
		BUTTON_RIGHT							: in std_logic;
		BUTTON_SHOOT							: in std_logic;
--		NEW_LEVEL								: in std_logic;
		
		ALIEN_GRID_MOVEMENT					: out direction_type;
		COLUMN_TO_SHOOT						: out alien_grid_index_type;
		ALIEN_SHOOT								: out std_logic;
		RAND_ALIEN_MOVEMENT					: out direction_type;
		SHOW_RAND_ALIEN						: out std_logic;
		PLAYER_MOVEMENT						: out direction_type;
		PLAYER_SHOOT							: out std_logic;
		ADVANCE_PLAYER_BULLET				: out std_logic;
		ADVANCE_ALIEN_BULLETS				: out std_logic;
		DESTROY									: out datapath_entity_index_type;
		DESTROY_SILENT_EXPLOSION			: out std_logic;
		HIDE									 	: out	datapath_entity_index_type;
		CHANGE_PLAYER_EXPLOSION_SPRITE 	: out std_logic
	);
end entity;

architecture RTL of Hi_Datapath_Control_Unit is 

	signal alien_frame_time 					: integer range 0 to BASE_ALIEN_FRAME_TIME_1us-1;
	signal game_tick 								: std_logic;
	signal player_move_time						: std_logic;
		
	type column_state_type is (IDLE, CHECKING_RESPONSE, FIRST_INDEX, WAITING);
	signal column_state							: column_state_type;
	signal bullet_tick							: std_logic;
	signal bullet_gen_time						: integer range 0 to (BASE_ALIEN_BULLET_GEN_TIME_1us - 1);
	
	signal reg_show_rand_alien					: std_logic;
	signal spawn_rand_alien						: std_logic;
	signal rand_alien_time						: integer range 0 to (RAND_ALIEN_TIME_MIN_1us + RAND_ALIEN_TIME_RANGE_1us - 1);
	signal move_rand_alien						: std_logic;
	signal random_alien_movement				: direction_type;
	signal next_random_alien_movement		: direction_type;
	
	signal rand_col								: alien_grid_index_type;
	
	signal destruction_index_array			: destruction_index_array_type;
	signal destruction_timer_array 			: destruction_timer_array_type;
		
	type collision_handler_state_type is (HANDLING_FIRST_ENTITY, HANDLING_SECOND_ENTITY);
	signal collision_handler_state 			: collision_handler_state_type;
	
begin
	
	bullet_tick_gen : process(CLOCK, RESET_N)
		
		variable counter : integer range 0 to (BASE_ALIEN_BULLET_GEN_TIME_1us - 1);
	
	begin
	
		if (RESET_N = '0') then
		
			counter 				:= 0;
			bullet_tick 		<= '0';
		
		elsif (rising_edge(CLOCK)) then
		
			bullet_tick <= '0';
		
			if (time_1us = '1') then
				
				if(counter = bullet_gen_time) then
				
					counter 		:= 0;
					bullet_tick <= '1';
				
				else
				
					counter 		:= counter+1;
					bullet_tick <= '0';			
				
				end if;
			end if;
		end if;
	
	end process;
	
	rand_alien_tick_gen : process(CLOCK, RESET_N)
		
		variable counter : integer range 0 to (RAND_ALIEN_TIME_MIN_1us + RAND_ALIEN_TIME_RANGE_1us - 1);
	
	begin
	
		if (RESET_N = '0') then
		
			counter 				:= 0;
			spawn_rand_alien	<= '0';
		
		elsif (rising_edge(CLOCK)) then
			
			spawn_rand_alien <= '0';
			
			if (time_1us = '1' and random_alien_movement = DIR_NONE) then
			
				if(counter = rand_alien_time) then
				
					counter 				:= 0;
					spawn_rand_alien 	<= '1';
				
				else
				
					counter 				:= counter+1;
					spawn_rand_alien 	<= '0';			
				
				end if;
			end if;
		end if;
	
	end process;
	
	rand_alien_movement_tick_gen : process(CLOCK, RESET_N)
		
		variable counter : integer range 0 to (RAND_ALIEN_FRAME_TIME_1us - 1);
	
	begin
	
		if (RESET_N = '0') then
		
			counter 				:= 0;
			move_rand_alien	<= '0';
		
		elsif (rising_edge(CLOCK)) then
			
			move_rand_alien <= '0';
			
			if (time_1us = '1') then
			
				if(counter = RAND_ALIEN_FRAME_TIME_1us - 1) then
				
					counter 				:= 0;
					move_rand_alien 	<= '1';
				
				else
				
					counter 				:= counter+1;
					move_rand_alien 	<= '0';			
				
				end if;
			end if;
		end if;
	
	end process;

	game_tick_gen : process(CLOCK, RESET_N)
	
		variable counter 				: integer range 0 to (BASE_ALIEN_FRAME_TIME_1us - 1);
	
	begin
		
		if (RESET_N = '0') then
		
			counter 		:= 0;
			game_tick 	<= '0';
	
		elsif (rising_edge(CLOCK)) then
		
			game_tick 	<= '0';
			
			if (time_1us = '1') then
			
				if(counter >= alien_frame_time) then
				
					counter 		:= 0;
					game_tick 	<= '1';
			
				else
				
					counter 		:= counter+1;
					game_tick 	<= '0';			
				
				end if;
			end if;
		end if;
	
	end process;
	
	rand_col_gen : process(CLOCK, RESET_N)
	begin
	
		if (RESET_N = '0') then
			rand_col <= 0;
		
		elsif (rising_edge(CLOCK)) then
		
			if (time_1us = '1' and RAND_GEN(0) = '1' and RAND_GEN(2) = '1') then -- The rand_col gets incremented every 1us only if the first and third random bits are 1
			
				if(rand_col = rand_col'high) then
					rand_col <= 0;
				
				else
					rand_col <= rand_col + 1;
				
				end if;
			end if;
		end if;
	
	end process;

	advance_player_bullet_handling	: process(CLOCK, RESET_N)
		
		variable counter : integer range 0 to (PLAYER_BULLET_TIME_1us - 1);
	
	begin
	
		if (RESET_N = '0') then
		
			counter 						:= 0;
			ADVANCE_PLAYER_BULLET 	<= '0';
	
		elsif (rising_edge(CLOCK)) then
			
			ADVANCE_PLAYER_BULLET 	<= '0';
			
			if (time_1us = '1' and destruction_index_array(PLAYER_DESTRUCTION_INDEX).entity_type = ENTITY_NONE) then
			
				if(counter = counter'high) then
				
					counter 						:= 0;
					ADVANCE_PLAYER_BULLET 	<= '1';
			
				else
				
					counter 						:= counter + 1;
					ADVANCE_PLAYER_BULLET 	<= '0';			
					
				end if;
			end if;
		end if;
		
	end process;
	
	advance_alien_bullets_handling	: process(CLOCK, RESET_N)
		
		variable counter : integer range 0 to (ALIEN_BULLET_TIME_1us - 1);
	
	begin
	
		if (RESET_N = '0') then
		
			counter 						:= 0;
			ADVANCE_ALIEN_BULLETS 	<= '0';
	
		elsif (rising_edge(CLOCK)) then
		
			ADVANCE_ALIEN_BULLETS 	<= '0';
			
			if (time_1us = '1' and destruction_index_array(PLAYER_DESTRUCTION_INDEX).entity_type = ENTITY_NONE) then
			
				if(counter = counter'high) then
				
					counter 						:= 0;
					ADVANCE_ALIEN_BULLETS	<= '1';
				
				else
				
					counter 						:= counter + 1;
					ADVANCE_ALIEN_BULLETS 	<= '0';			
			
				end if;
			end if;
		end if;
		
	end process;
	
	alien_grid_movement_handling : process(CLOCK, RESET_N) is
		
		variable grid_movement 		: direction_type := DIR_RIGHT;
		variable last_wall_reached : direction_type := DIR_NONE;
		
	begin
		
		if (RESET_N = '0') then 
		
			grid_movement 			:= DIR_RIGHT;
			last_wall_reached		:= DIR_NONE;
			ALIEN_GRID_MOVEMENT 	<= DIR_RIGHT;
		
		elsif (rising_edge(CLOCK)) then 
		
			ALIEN_GRID_MOVEMENT 	<= DIR_NONE;
		
			if (game_tick = '1' and destruction_index_array(ALIEN_DESTRUCTION_INDEX).entity_type = ENTITY_NONE and destruction_index_array(PLAYER_DESTRUCTION_INDEX).entity_type = ENTITY_NONE) then 
				
				ALIEN_GRID_MOVEMENT <= grid_movement;
				
				if (ALIEN_BORDER_REACHED = DIR_LEFT and ALIEN_BORDER_REACHED /= last_wall_reached) then
				
					grid_movement 			:= DIR_RIGHT;
					ALIEN_GRID_MOVEMENT 	<= DIR_DOWN;
				
				elsif (ALIEN_BORDER_REACHED = DIR_RIGHT and ALIEN_BORDER_REACHED /= last_wall_reached) then 
					
					grid_movement 			:= DIR_LEFT;
					ALIEN_GRID_MOVEMENT 	<= DIR_DOWN;
				
				end if;
				
				last_wall_reached := ALIEN_BORDER_REACHED;
				
			end if;	
		end if;
	
	end process;
	
	player_timed_move : process(CLOCK, RESET_N)
		
		variable counter : integer range 0 to (PLAYER_MOVEMENT_TIME_1us - 1);
	
	begin
	
		if (RESET_N = '0') then
		
			counter  					:= 0;
			player_move_time        <= '0';
	
		elsif rising_edge(CLOCK) then
		
			player_move_time 			<= '0';
			
			if (time_1us = '1') then
			
				if(counter = counter'high) then
			
					counter 				:= 0;
					player_move_time 	<= '1';
		
				else
				
					counter 				:= counter + 1;
					player_move_time 	<= '0';			
			
				end if;
			end if;
		end if;
	
	end process;
	
	player_movement_handler : process(CLOCK, RESET_N)
	
		variable player_explosion_timer : integer range 0 to (PLAYER_EXPLOSION_FRAME_TIME_1us - 1) := 0;
	
	begin
	
		if (RESET_N = '0') then
		
			PLAYER_MOVEMENT 						<= DIR_NONE;
			PLAYER_SHOOT 							<= '0';
			CHANGE_PLAYER_EXPLOSION_SPRITE 	<= '0';
			
			player_explosion_timer 				:= PLAYER_EXPLOSION_FRAME_TIME_1us - 1;
			
		elsif rising_edge(CLOCK) then
		
			PLAYER_MOVEMENT 						<= DIR_NONE;
			PLAYER_SHOOT 							<= '0';
			CHANGE_PLAYER_EXPLOSION_SPRITE 	<= '0';
			
			if (player_move_time = '1' and destruction_index_array(PLAYER_DESTRUCTION_INDEX).entity_type = ENTITY_NONE) then
			
				if (BUTTON_LEFT = '1' and PLAYER_BORDER_REACHED /= DIR_LEFT) then
					PLAYER_MOVEMENT <= DIR_LEFT;
				
				elsif (BUTTON_RIGHT = '1' and PLAYER_BORDER_REACHED /= DIR_RIGHT) then
					PLAYER_MOVEMENT <= DIR_RIGHT;
				
				end if;
			end if;
			
			if (BUTTON_SHOOT = '1' and destruction_index_array(ALIEN_DESTRUCTION_INDEX).entity_type = ENTITY_NONE and destruction_index_array(PLAYER_DESTRUCTION_INDEX).entity_type = ENTITY_NONE and destruction_index_array(PLAYER_BULLET_DESTRUCTION_INDEX).entity_type = ENTITY_NONE) then
				PLAYER_SHOOT <= '1';			
			end if;
			
			if (time_1us = '1' and destruction_index_array(PLAYER_DESTRUCTION_INDEX).entity_type = ENTITY_PLAYER) then 
			
				if (player_explosion_timer = 0) then 
				
					CHANGE_PLAYER_EXPLOSION_SPRITE 	<= '1';
					player_explosion_timer 				:= PLAYER_EXPLOSION_FRAME_TIME_1us - 1;
				
				else
					player_explosion_timer 				:= player_explosion_timer - 1;
				
				end if;
				
			end if;
			
		end if;
		
	end process;
		
	column_to_shoot_handling : process(CLOCK, RESET_N)
		
		variable column 				  	: alien_grid_index_type	:= 0;
		
	begin
	
		if (RESET_N = '0') then
		
			COLUMN_TO_SHOOT 		<= 0;
			ALIEN_SHOOT 			<= '0';
			
			column_state 			<= IDLE;
			
			column					:= 0;
			
		elsif (rising_edge(CLOCK)) then	
			
			if (destruction_index_array(ALIEN_DESTRUCTION_INDEX).entity_type = ENTITY_NONE and destruction_index_array(PLAYER_DESTRUCTION_INDEX).entity_type = ENTITY_NONE) then
			
				case(column_state) is
				
					when IDLE => 
				
						ALIEN_SHOOT <= '0';
				
						if (bullet_tick = '1') then
							column_state <= FIRST_INDEX;
						end if;
						
					when FIRST_INDEX => 
						
						column 					:= rand_col;
					--	column 					:= 0; -- for debugging purposes
						
						COLUMN_TO_SHOOT 		<= column;
						ALIEN_SHOOT 			<= '1';
						column_state 			<= WAITING;
						
						
					when WAITING =>
						
						column_state 	<= CHECKING_RESPONSE;
						ALIEN_SHOOT 	<= '0';
					
					when CHECKING_RESPONSE => 
							
						if (COLUMN_CANNOT_SHOOT = '1') then -- Can't shoot from this column, add 1
							
							if (column = column'high) then
								column := 0;
							else 
								column := column + 1;
							end if;
							COLUMN_TO_SHOOT 		<= column; 
							column_state 			<= WAITING;
							ALIEN_SHOOT 			<= '1';
												
						elsif (NO_BULLETS_TO_SHOOT = '1') then -- Can't shoot because no bullets available, discard. 
																			-- This signal acts as a support for different behaviours from this one.
																			-- For example you can keep trying to shoot until a bullet becomes available:
																				--	COLUMN_TO_SHOOT 		<= column; 
																				--	column_state 			<= WAITING;
																				--	ALIEN_SHOOT 			<= '1';
						
							column_state 	<= IDLE;
							ALIEN_SHOOT 	<= '0';
							
						else -- Shot complete, IDLE
							
							column_state 	<= IDLE;
							ALIEN_SHOOT 	<= '0';
						
						end if;
					
				end case;
				
			end if;			
		end if;
		
	end process;
	
	rand_alien_movement_handler : process(CLOCK, RESET_N)
	
		variable last_wall_reached 			: direction_type 	:= DIR_LEFT;
		variable rand_alien_visible_inhibit	: std_logic 		:= '0';
		
	begin
	
		if (RESET_N = '0') then
		
			RAND_ALIEN_MOVEMENT 			<= DIR_NONE;
			SHOW_RAND_ALIEN 				<= '0';
	
			rand_alien_visible_inhibit := '0';
			last_wall_reached 			:= DIR_LEFT;
	
			random_alien_movement 		<= DIR_NONE;
			next_random_alien_movement <= DIR_RIGHT;
			rand_alien_time 				<= (RAND_ALIEN_TIME_MIN_1us - 1);	
			
			
		elsif rising_edge(CLOCK) then
		
			RAND_ALIEN_MOVEMENT <= DIR_NONE;
			
			if (RAND_ALIEN_BORDER_REACHED = DIR_LEFT and last_wall_reached /= DIR_LEFT) then
			
				last_wall_reached 			:= DIR_LEFT;
				
				random_alien_movement 		<= DIR_NONE;
				next_random_alien_movement <= DIR_RIGHT;
				
			elsif (RAND_ALIEN_BORDER_REACHED = DIR_RIGHT and last_wall_reached /= DIR_RIGHT) then 
				
				last_wall_reached := DIR_RIGHT;
				
				random_alien_movement <= DIR_NONE;
				next_random_alien_movement <= DIR_LEFT;
			
			end if;
				
			if (spawn_rand_alien = '1') then
			
				RAND_ALIEN_MOVEMENT 			<= next_random_alien_movement; --This is needed for the datapath to know where to put the random alien
				
				random_alien_movement 		<= next_random_alien_movement;
				rand_alien_time 				<= RAND_ALIEN_TIME_MIN_1us - 1 + to_integer(unsigned(RAND_GEN))*10000;
				
				rand_alien_visible_inhibit := '1';
		
			else
			
				if (RAND_ALIEN_VISIBLE = '0' and rand_alien_visible_inhibit = '0') then
				
					random_alien_movement 		<= DIR_NONE;
					next_random_alien_movement <= DIR_RIGHT;
			
				end if;
			
				if (move_rand_alien = '1' and destruction_index_array(RAND_ALIEN_DESTRUCTION_INDEX).entity_type = ENTITY_NONE and destruction_index_array(PLAYER_DESTRUCTION_INDEX).entity_type = ENTITY_NONE) then 
--				if (move_rand_alien = '1') then 
					RAND_ALIEN_MOVEMENT <= random_alien_movement;
				end if;
				
				rand_alien_visible_inhibit := '0';
				
			end if;
			
			SHOW_RAND_ALIEN <= spawn_rand_alien;
			
		end if;
		
	end process;
	
	collision_handler : process(CLOCK, RESET_N) 

		variable reg_collision : collision_type;
		variable found 		  : std_logic;
	
	begin
	
		if (RESET_N = '0') then
		
			HIDE 								<= (0,0,ENTITY_NONE);
			DESTROY 							<= (0,0,ENTITY_NONE);	
			DESTROY_SILENT_EXPLOSION 	<= '0';
			
			alien_frame_time 				<= BASE_ALIEN_FRAME_TIME_1us - 1;
			bullet_gen_time 				<= BASE_ALIEN_BULLET_GEN_TIME_1us - 1;
			
			for I in 0 to DESTRUCTION_SLOT_COUNT - 1 loop 
			
				destruction_timer_array(I) <= 0;
				destruction_index_array(I) <= (0,0,ENTITY_NONE);
			
			end loop;
			
			collision_handler_state <= HANDLING_FIRST_ENTITY;
			
			found 						:= '0';
			reg_collision 				:= ((0,0,ENTITY_NONE),(0,0,ENTITY_NONE));
				
		elsif (rising_edge(CLOCK)) then 
		
			DESTROY 							<= (0,0,ENTITY_NONE);
			DESTROY_SILENT_EXPLOSION 	<= '0';
			HIDE 								<= (0,0,ENTITY_NONE);
			
			found := '0';
			
			if (time_1us = '1') then
			
				for I in 0 to DESTRUCTION_SLOT_COUNT - 1 loop 
			
					if (destruction_index_array(I).entity_type /= ENTITY_NONE and (destruction_index_array(PLAYER_DESTRUCTION_INDEX).entity_type = ENTITY_NONE or I = PLAYER_DESTRUCTION_INDEX)) then
				
						-- if multiple entities reach 0 at the same time only one of them will get destroyed causing a glitch. 
						-- This check prevents that, but it may delay the destruction of some objects by AT MOST 7 clock intervals.
					
						if (destruction_timer_array(I) > 0) then
							destruction_timer_array(I) <= destruction_timer_array(I) - 1;
						end if;
					
						if (destruction_timer_array(I) = 0 and found = '0') then
						
							HIDE 								<= destruction_index_array(I);
							destruction_index_array(I) <= (0,0,ENTITY_NONE);
							found 							:= '1';
							
							-- If an alien has finished its explosion, alien frame time is brought back to normal.
							if (I = ALIEN_DESTRUCTION_INDEX) then
								alien_frame_time <= alien_frame_time - EXPLOSION_TIME_1us;
							end if;
					
						end if;
				
					end if;
			
				end loop;
			
			end if;
			
			case (collision_handler_state) is 
			when HANDLING_FIRST_ENTITY =>
			
				reg_collision 				:= COLLISION;
				collision_handler_state <= HANDLING_SECOND_ENTITY;
			
			when HANDLING_SECOND_ENTITY =>
		
				collision_handler_state <= HANDLING_FIRST_ENTITY;
				
			end case;
	
			-- See for reference collision_table.xlsx, rightmost table.
	
			-- First entity (impacter) can only be: ALIEN, ALIEN_BULLET or PLAYER_BULLET
			-- Second entity (target) can only be: ALIEN, ALIEN_BULLET, PLAYER, RANDOM_ALIEN, SHIELD, BORDER 
				
			case (reg_collision.first_entity.entity_type) is
			
			when ENTITY_ALIEN =>
			
				case (reg_collision.second_entity.entity_type) is 
				
				when ENTITY_PLAYER => 
				
					case (collision_handler_state) is 
					when HANDLING_FIRST_ENTITY => -- Do nothing
					when HANDLING_SECOND_ENTITY =>
						if (LIVES > 1) then
							HIDE <= reg_collision.second_entity;
						elsif (destruction_index_array(PLAYER_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(PLAYER_DESTRUCTION_INDEX) <= (reg_collision.second_entity);
							destruction_timer_array(PLAYER_DESTRUCTION_INDEX) <= (PLAYER_EXPLOSION_TIME_1us); 
							DESTROY <= reg_collision.second_entity;
						end if;
					end case;
					
				when ENTITY_SHIELD =>
					
					case (collision_handler_state) is 
					when HANDLING_FIRST_ENTITY => -- Do nothing
					when HANDLING_SECOND_ENTITY =>
						HIDE <= reg_collision.second_entity;
					end case;
					
				when ENTITY_BORDER =>
					
					case (collision_handler_state) is 
					when HANDLING_FIRST_ENTITY => -- Do nothing
					when HANDLING_SECOND_ENTITY =>
						if (LIVES > 1) then
							HIDE <= (0,0,ENTITY_PLAYER);
						elsif (destruction_index_array(PLAYER_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(PLAYER_DESTRUCTION_INDEX) <= (0,0,ENTITY_PLAYER);
							destruction_timer_array(PLAYER_DESTRUCTION_INDEX) <= (PLAYER_EXPLOSION_TIME_1us); 
							DESTROY <= (0,0,ENTITY_PLAYER);
						end if;
					end case;
					
				when others =>
				end case; 
				
			when ENTITY_ALIEN_BULLET =>
				
				case (reg_collision.second_entity.entity_type) is 
				
				when ENTITY_PLAYER => 
					
					case (collision_handler_state) is 
					when HANDLING_FIRST_ENTITY =>
						if (destruction_index_array(reg_collision.first_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(reg_collision.first_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) <= (reg_collision.first_entity);
							destruction_timer_array(reg_collision.first_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) <= (BULLET_EXPLOSION_TIME_1us);
							DESTROY 							<= reg_collision.first_entity;
							DESTROY_SILENT_EXPLOSION 	<= '1';
						end if;
					when HANDLING_SECOND_ENTITY => 
						if (destruction_index_array(PLAYER_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(PLAYER_DESTRUCTION_INDEX) <= (reg_collision.second_entity);
							destruction_timer_array(PLAYER_DESTRUCTION_INDEX) <= (PLAYER_EXPLOSION_TIME_1us); 
							DESTROY <= reg_collision.second_entity;
						end if;
					end case;
					
				when ENTITY_SHIELD =>
				
					case (collision_handler_state) is 
					when HANDLING_FIRST_ENTITY =>
						if (destruction_index_array(reg_collision.first_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(reg_collision.first_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) <= (reg_collision.first_entity);
							destruction_timer_array(reg_collision.first_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) <= (BULLET_EXPLOSION_TIME_1us);
							DESTROY <= reg_collision.first_entity;
						end if;
					when HANDLING_SECOND_ENTITY => 
						DESTROY <= reg_collision.second_entity;
					end case;
					
				when ENTITY_BORDER =>
					
					case (collision_handler_state) is 
					when HANDLING_FIRST_ENTITY =>
						if (destruction_index_array(reg_collision.first_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(reg_collision.first_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) <= (reg_collision.first_entity);
							destruction_timer_array(reg_collision.first_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) <= (BULLET_EXPLOSION_TIME_1us);
							DESTROY <= reg_collision.first_entity;
						end if;
					when HANDLING_SECOND_ENTITY => -- do nothing
					end case;
					
				when others =>
				end case;
				
			when ENTITY_PLAYER_BULLET =>
			
				case (reg_collision.second_entity.entity_type) is 
			
				when ENTITY_ALIEN => 
				
					case (collision_handler_state) is 
					when HANDLING_FIRST_ENTITY =>
						if (destruction_index_array(PLAYER_BULLET_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(PLAYER_BULLET_DESTRUCTION_INDEX) <= (reg_collision.first_entity);
							destruction_timer_array(PLAYER_BULLET_DESTRUCTION_INDEX) <= (BULLET_EXPLOSION_TIME_1us);
							DESTROY 							<= reg_collision.first_entity;
							DESTROY_SILENT_EXPLOSION 	<= '1';
						end if;
					when HANDLING_SECOND_ENTITY => 
						if (destruction_index_array(ALIEN_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(ALIEN_DESTRUCTION_INDEX) <= (reg_collision.second_entity);
							destruction_timer_array(ALIEN_DESTRUCTION_INDEX) <= (EXPLOSION_TIME_1us);
							DESTROY 				<= reg_collision.second_entity;
							--Temporarily increase the alien frame time
							alien_frame_time <= alien_frame_time + EXPLOSION_TIME_1us;
							
							--Aliens now get quicker, alien bullets generation is quicker, too
							alien_frame_time 	<= alien_frame_time - ALIEN_FRAME_TIME_DECREASE_1us;
							bullet_gen_time 	<= bullet_gen_time - ALIEN_BULLET_GEN_TIME_DECREASE_1us;
						end if;
					end case;
					
				when ENTITY_ALIEN_BULLET =>
					
					case (collision_handler_state) is 
					when HANDLING_FIRST_ENTITY =>
						if (destruction_index_array(PLAYER_BULLET_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(PLAYER_BULLET_DESTRUCTION_INDEX) <= (reg_collision.first_entity);
							destruction_timer_array(PLAYER_BULLET_DESTRUCTION_INDEX) <= (BULLET_EXPLOSION_TIME_1us);
							DESTROY						 	<= reg_collision.first_entity;
							DESTROY_SILENT_EXPLOSION 	<= '1';
						end if;
					when HANDLING_SECOND_ENTITY => 
						if (destruction_index_array(reg_collision.second_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(reg_collision.second_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) <= (reg_collision.second_entity);
							destruction_timer_array(reg_collision.second_entity.index_1 + ALIEN_BULLET_BASE_DESTRUCTION_INDEX) <= (BULLET_EXPLOSION_TIME_1us);
							DESTROY <= reg_collision.second_entity;
						end if;
					end case;
					
				when ENTITY_RANDOM_ALIEN =>
					
					case (collision_handler_state) is 
					when HANDLING_FIRST_ENTITY =>
						if (destruction_index_array(PLAYER_BULLET_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(PLAYER_BULLET_DESTRUCTION_INDEX) <= (reg_collision.first_entity);
							destruction_timer_array(PLAYER_BULLET_DESTRUCTION_INDEX) <= (BULLET_EXPLOSION_TIME_1us);
							DESTROY 							<= reg_collision.first_entity;
							DESTROY_SILENT_EXPLOSION 	<= '1';
						end if;
					when HANDLING_SECOND_ENTITY =>
						if (destruction_index_array(RAND_ALIEN_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(RAND_ALIEN_DESTRUCTION_INDEX) <= (reg_collision.second_entity);
							destruction_timer_array(RAND_ALIEN_DESTRUCTION_INDEX) <= (EXPLOSION_TIME_1us);
							DESTROY <= reg_collision.second_entity;
						end if;
					end case;
					
				when ENTITY_SHIELD =>
					
					case (collision_handler_state) is 
					when HANDLING_FIRST_ENTITY =>
						if (destruction_index_array(PLAYER_BULLET_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(PLAYER_BULLET_DESTRUCTION_INDEX) <= (reg_collision.first_entity);
							destruction_timer_array(PLAYER_BULLET_DESTRUCTION_INDEX) <= (BULLET_EXPLOSION_TIME_1us);
							DESTROY <= reg_collision.first_entity;
						end if;
					when HANDLING_SECOND_ENTITY => 
						DESTROY <= reg_collision.second_entity; 
					end case;
				when ENTITY_BORDER =>
					case (collision_handler_state) is 
					when HANDLING_FIRST_ENTITY =>
						if (destruction_index_array(PLAYER_BULLET_DESTRUCTION_INDEX) = (0,0,ENTITY_NONE)) then
							destruction_index_array(PLAYER_BULLET_DESTRUCTION_INDEX) <= (reg_collision.first_entity);
							destruction_timer_array(PLAYER_BULLET_DESTRUCTION_INDEX) <= (BULLET_EXPLOSION_TIME_1us);
							DESTROY <= reg_collision.first_entity;
						end if;
					when HANDLING_SECOND_ENTITY => -- Do nothing
					end case;
					
				when others =>
				end case;
				
			when others =>
			end case;
			
		end if;
	
	end process;
	
end architecture;