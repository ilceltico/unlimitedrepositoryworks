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
		TIME_1US							: in std_logic;
		ALIEN_BORDER_REACHED			: in 	direction_type;
		RAND_ALIEN_BORDER_REACHED 	: in 	direction_type;
		PLAYER_BORDER_REACHED		: in direction_type;
		COLLISION						: in collision_type;
		RAND_OUTPUT						: in std_logic_vector (RAND_ALIEN_GENERATION_TIME_BITS - 1 downto 0);
		COLUMN_CANNOT_SHOOT			: in std_logic;
		BUTTON_LEFT						: in std_logic;
		BUTTON_RIGHT					: in std_logic;
		BUTTON_SHOOT					: in std_logic;
		
		ALIEN_GRID_MOVEMENT			: out direction_type;
		COLUMN_TO_SHOOT				: out alien_grid_index_type;
		ALIEN_SHOOT						: out std_logic;
		RAND_ALIEN_MOVEMENT			: out direction_type;
		SHOW_RAND_ALIEN				: out std_logic;
		PLAYER_MOVEMENT				: out direction_type;
		PLAYER_SHOOT					: out std_logic;
		ADVANCE_PLAYER_BULLET		: out std_logic;
		ADVANCE_ALIEN_BULLETS		: out std_logic;
		DESTROY							: out datapath_entity_index_type;
		HIDE								: out	datapath_entity_index_type
	);
end entity;

architecture RTL of Hi_Datapath_Control_Unit is 

	signal game_tick 				: std_logic;
	signal player_move_time		: std_logic;
		
	type column_state_type is (IDLE, INCREMENTING_INDEX, FIRST_INDEX, WAITING);
	signal column_state				: column_state_type;
	signal bullet_tick				: std_logic;
	signal bullet_gen_time			: integer range 0 to (BASE_ALIEN_BULLET_GEN_TIME_1us - 1);
	
	signal reg_show_rand_alien		: std_logic;
	signal spawn_rand_alien			: std_logic;
	-- signal rand_alien_time			: integer range 0 to (RAND_ALIEN_TIME_MIN_1us + RAND_ALIEN_TIME_RANGE_1us - 1); -- Insert here randomizer output
	signal rand_alien_time			: integer range 0 to (RAND_ALIEN_TIME_MIN_1us - 1); 
	signal move_rand_alien			: std_logic;
	signal hide_rand_alien_border_reached : std_logic;
	signal rand_alien_alive			: std_logic;

	
begin
	
	bullet_tick_gen : process(CLOCK, RESET_N)
		
		variable counter : integer range 0 to (BASE_ALIEN_BULLET_GEN_TIME_1us - 1);
	
	begin
	
		if (RESET_N = '0') then
		
			counter 				:= 0;
			bullet_tick 		<= '0';
			bullet_gen_time 	<= (BASE_ALIEN_BULLET_GEN_TIME_1us - 1); --non va qui!!
		
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
		
		-- variable counter : integer range 0 to (RAND_ALIEN_TIME_MIN_1us + RAND_ALIEN_TIME_RANGE_1us - 1);
		variable counter : integer range 0 to (RAND_ALIEN_TIME_MIN_1us - 1);
	begin
	
		if (RESET_N = '0') then
		
			counter 				:= 0;
			spawn_rand_alien	<= '0';
		
		elsif (rising_edge(CLOCK)) then
			spawn_rand_alien <= '0';
			if (time_1us = '1' and rand_alien_alive = '0') then
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
		variable counter : integer range 0 to (BASE_ALIEN_FRAME_TIME_1us - 1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			game_tick <= '0';
		elsif (rising_edge(CLOCK)) then
			game_tick <= '0';
			if (time_1us = '1') then
				if(counter = counter'high) then
					counter := 0;
					game_tick <= '1';
				else
					counter := counter+1;
					game_tick <= '0';			
				end if;
			end if;
		end if;
	end process;

	advance_player_bullet_handling	: process(CLOCK, RESET_N)
		variable counter : integer range 0 to (PLAYER_BULLET_TIME_1us - 1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			ADVANCE_PLAYER_BULLET <= '0';
		elsif (rising_edge(CLOCK)) then
			ADVANCE_PLAYER_BULLET <= '0';
			if (time_1us = '1') then
				if(counter = counter'high) then
					counter := 0;
					ADVANCE_PLAYER_BULLET <= '1';
				else
					counter := counter+1;
					ADVANCE_PLAYER_BULLET <= '0';			
				end if;
			end if;
		end if;
	end process;
	
	advance_alien_bullets_handling	: process(CLOCK, RESET_N)
		variable counter : integer range 0 to (ALIEN_BULLET_TIME_1us - 1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			ADVANCE_ALIEN_BULLETS <= '0';
		elsif (rising_edge(CLOCK)) then
			ADVANCE_ALIEN_BULLETS <= '0';
			if (time_1us = '1') then
				if(counter = counter'high) then
					counter := 0;
					ADVANCE_ALIEN_BULLETS <= '1';
				else
					counter := counter+1;
					ADVANCE_ALIEN_BULLETS <= '0';			
				end if;
			end if;
		end if;
	end process;
	
	alien_grid_movement_handling : process(CLOCK, RESET_N) is
		
		variable grid_movement : direction_type := DIR_RIGHT;
		variable last_wall_reached : direction_type := DIR_NONE;
		
	begin
		
		if (RESET_N = '0') then 
		
			grid_movement := DIR_RIGHT;
			ALIEN_GRID_MOVEMENT <= DIR_NONE;
		
		elsif (rising_edge(CLOCK)) then 
		
			ALIEN_GRID_MOVEMENT <= DIR_NONE;
		
			if (game_tick = '1') then 
				ALIEN_GRID_MOVEMENT <= grid_movement;
				
				if (ALIEN_BORDER_REACHED = DIR_LEFT and ALIEN_BORDER_REACHED /= last_wall_reached) then
				
					grid_movement := DIR_RIGHT;
					ALIEN_GRID_MOVEMENT <= DIR_DOWN;
				
				elsif (ALIEN_BORDER_REACHED = DIR_RIGHT and ALIEN_BORDER_REACHED /= last_wall_reached) then 
					
					grid_movement := DIR_LEFT;
					ALIEN_GRID_MOVEMENT <= DIR_DOWN;
				
				end if;
				
				last_wall_reached := ALIEN_BORDER_REACHED;
				
			end if;
			
		end if;
	
	end process;
	
	player_timed_move : process(CLOCK, RESET_N)
		variable counter : integer range 0 to (PLAYER_MOVEMENT_TIME_1us - 1);
	begin
		if (RESET_N = '0') then
			counter  := 0;
			player_move_time        <= '0';
		elsif rising_edge(CLOCK) then
			player_move_time <= '0';
			if (time_1us = '1') then
				if(counter = counter'high) then
					counter := 0;
					player_move_time <= '1';
				else
					counter := counter+1;
					player_move_time <= '0';			
				end if;
			end if;
		end if;
	end process;
	
	player_movement_handler : process(CLOCK, RESET_N)
	begin
	
		if (RESET_N = '0') then
		
			PLAYER_MOVEMENT <= DIR_NONE;
			PLAYER_SHOOT <= '0';
			
		elsif rising_edge(CLOCK) then
		
			PLAYER_MOVEMENT <= DIR_NONE;
			PLAYER_SHOOT <= '0';
			
			if (player_move_time = '1') then
			
				if (BUTTON_LEFT = '1' and PLAYER_BORDER_REACHED /= DIR_LEFT) then
					PLAYER_MOVEMENT <= DIR_LEFT;
				elsif (BUTTON_RIGHT = '1' and PLAYER_BORDER_REACHED /= DIR_RIGHT) then
					PLAYER_MOVEMENT <= DIR_RIGHT;
				end if;
			
			end if;
			
			if (BUTTON_SHOOT = '1') then
			
				PLAYER_SHOOT <= '1';
			
			end if;
			
		end if;
		
	end process;
		
	column_to_shoot_handling : process(CLOCK, RESET_N)
		
		variable column : integer := 0;
		variable reg_column_to_shoot : alien_grid_index_type := 0;
		
	begin
	
		if (RESET_N = '0') then
		
			COLUMN_TO_SHOOT 		<= 0;
			ALIEN_SHOOT 			<= '0';
			column_state 			<= IDLE;
			reg_column_to_shoot 	:= 0;
			column					:= 0;
			
			
		elsif (rising_edge(CLOCK)) then	
			
			case(column_state) is
			
				when IDLE => 
			
					ALIEN_SHOOT <= '0';
			
					if (bullet_tick = '1') then
						column_state <= FIRST_INDEX;
					end if;
					
				when FIRST_INDEX => 
					
					--column := to_integer(unsigned (RAND_OUTPUT));
					column := 0; -- for debugging purposes
					reg_column_to_shoot := column;	
					COLUMN_TO_SHOOT 		<= reg_column_to_shoot;
					column_state 			<= WAITING;
					ALIEN_SHOOT <= '1';
					
				when WAITING =>
					
					column_state <= INCREMENTING_INDEX;
					ALIEN_SHOOT <= '0';
				
				when INCREMENTING_INDEX => 
						
					if (COLUMN_CANNOT_SHOOT = '1') then
						
						reg_column_to_shoot 	:= reg_column_to_shoot + 1;
						COLUMN_TO_SHOOT 		<= reg_column_to_shoot; 
						column_state 			<= WAITING;
						ALIEN_SHOOT <= '1';
											
					else 
						
						column_state <= IDLE;
						ALIEN_SHOOT <= '0';
					
					end if;
				
			end case;
			
		end if;
		
	end process;
	
	rand_alien_movement_handler : process(CLOCK, RESET_N)
	
		variable random_alien_movement	: direction_type := DIR_RIGHT;
		variable last_wall_reached 		: direction_type := DIR_LEFT;
		
	begin
	
		if (RESET_N = '0') then
	
			random_alien_movement := DIR_RIGHT;
			last_wall_reached := DIR_LEFT;
			RAND_ALIEN_MOVEMENT <= DIR_NONE;
			SHOW_RAND_ALIEN <= '0';
			hide_rand_alien_border_reached <= '0';
			rand_alien_time 	<= (RAND_ALIEN_TIME_MIN_1us - 1);
			rand_alien_alive <= '0';
			
		elsif rising_edge(CLOCK) then
		
			RAND_ALIEN_MOVEMENT <= DIR_NONE;
			hide_rand_alien_border_reached <= '0';
			
			if (rand_alien_alive = '1') then
				if (move_rand_alien = '1') then 
					RAND_ALIEN_MOVEMENT <= random_alien_movement;
				end if;
				
				if (RAND_ALIEN_BORDER_REACHED = DIR_LEFT and last_wall_reached /= DIR_LEFT) then
				
					random_alien_movement := DIR_RIGHT;
					hide_rand_alien_border_reached <=  '1';
					last_wall_reached := DIR_LEFT;
					rand_alien_alive <= '0';
				
				elsif (RAND_ALIEN_BORDER_REACHED = DIR_RIGHT and last_wall_reached /= DIR_RIGHT) then 
					
					random_alien_movement := DIR_LEFT;
					hide_rand_alien_border_reached <=  '1';
					last_wall_reached := DIR_RIGHT;
					rand_alien_alive <= '0';
				
				end if;
			elsif (spawn_rand_alien = '1') then
				rand_alien_alive <= '1';
				RAND_ALIEN_MOVEMENT <= random_alien_movement;
				rand_alien_time <= RAND_ALIEN_TIME_MIN_1us + to_integer(unsigned(RAND_OUTPUT & "0000"));
			end if;
			
			SHOW_RAND_ALIEN <= spawn_rand_alien;
			
		end if;
		
	end process;
	
	-- TODO
	collision_handler : process(CLOCK, RESET_N) 
	
	type collision_handler_state_type is (HANDLING_FIRST_ENTITY, HANDLING_SECOND_ENTITY);
	variable state : collision_handler_state_type;
	variable second_entity : datapath_entity_index_type;
	
	begin
	
		if (RESET_N = '0') then 
		
			DESTROY <= (0,0,ENTITY_NONE);
			HIDE <= (0,0,ENTITY_NONE);	
			state := HANDLING_FIRST_ENTITY;
				
		elsif (rising_edge(CLOCK)) then 
		
			HIDE <= (0,0,ENTITY_NONE);
	
			case (state) is 
			when HANDLING_FIRST_ENTITY =>
				HIDE <= COLLISION.first_entity;
--				case (COLLISION.first_entity.entity_type) is
--				when ENTITY_PLAYER_BULLET =>
--					HIDE <= (0,0,ENTITY_PLAYER_BULLET);
--				when ENTITY_ALIEN_BULLET =>
--					--TODO
--				end if;
				state := HANDLING_SECOND_ENTITY;
				second_entity := COLLISION.second_entity;
			when HANDLING_SECOND_ENTITY =>
				HIDE <= second_entity;
				if (hide_rand_alien_border_reached = '1') then
					HIDE <= (0,0,ENTITY_RANDOM_ALIEN);
				end if;
				state := HANDLING_FIRST_ENTITY;
			end case;
			
		end if;
	
	end process;

end architecture;