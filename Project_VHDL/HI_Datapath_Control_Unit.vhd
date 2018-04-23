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
		RAND_OUTPUT						: in integer;
		COLUMN_CANNOT_SHOOT			: in std_logic;
				
		
		ALIEN_GRID_MOVEMENT			: out direction_type;
		COLUMN_TO_SHOOT				: out alien_grid_index_type;
		ALIEN_SHOOT						: out std_logic
		
	);
end entity;

architecture RTL of Hi_Datapath_Control_Unit is 
		
		type column_state_type is (IDLE, INCREMENTING_INDEX, FIRST_INDEX, WAITING);
		signal column_state				: column_state_type;
		signal bullet_tick				: std_logic;
		signal bullet_gen_time			: integer range 0 to (BASE_ALIEN_BULLET_GEN_TIME_50MHz - 1);
	
begin
	
	bullet_tick_gen : process(CLOCK, RESET_N)
		variable counter : integer range 0 to (BASE_ALIEN_BULLET_GEN_TIME_50MHz - 1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			bullet_tick <= '0';
			bullet_gen_time <= (BASE_ALIEN_BULLET_GEN_TIME_50MHz - 1); --non va qui!!
		elsif (rising_edge(CLOCK)) then
			if(counter = bullet_gen_time) then
				counter := 0;
				bullet_tick <= '1';
			else
				counter := counter+1;
				bullet_tick <= '0';			
			end if;
		end if;
	end process;
	
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
	
	column_to_shoot_handling : process(CLOCK, RESET_N) is
						
	begin
	
		if (RESET_N = '0') then
			COLUMN_TO_SHOOT <= '0';
			ALIEN_SHOOT <= '0';
			column_state <= 'IDLE';
			
			
		elsif (rising_edge(CLOCK)) then	
			ALIEN_SHOOT <= '1';
			
			case(column_state) is
			
				when IDLE => 
					
					ALIEN_SHOOT <= '0';
						
						if (bullet_tick = '1') then
							column_state <= FIRST_INDEX;
						end if;
					
				when FIRST_INDEX => 
					
					COLUMN_TO_SHOOT <= RAND_OUTPUT;
					column_state <= WAITING;
					
				when WAITING =>
					
					column_state <= INCREMENTING_INDEX;
				
				when INCREMENTING_INDEX => 
						
					if (COLUMN_CANNOT_SHOOT = '1') then
						COLUMN_TO_SHOOT <= COLUMN_TO_SHOOT + 1;
						column_state <= WAITING;
											
					else column_state <= IDLE;
					end if;
				
			end case;
			
	end process;

end architecture;