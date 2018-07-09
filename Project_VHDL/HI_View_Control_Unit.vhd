library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;
use work.vga_package.all;

entity Hi_View_Control_Unit is 
	port 
	(
		CLOCK								: in	std_logic;
		FRAME_TIME						: in  std_logic;
		RESET_N							: in 	std_logic;
		READY 							: in  std_logic;
		
		DRAW_SPRITE						: out std_logic;
		SHOW								: out std_logic;
		REQ_NEXT_SPRITE				: out std_logic;
		REQUEST_ENTITY_SPRITE		: out datapath_entity_index_type
	);
end entity;

architecture RTL of Hi_View_Control_Unit is 

type state_type is (RENDER, SHOW_SPRITES, WAITING, WAITING_2);
type substate_type is (ALIEN_QUERY, ALIEN_BULLET_QUERY, PLAYER_BULLET_QUERY, PLAYER_QUERY, RAND_ALIEN_QUERY, SHIELD_QUERY, RENDER_END);

signal render_asap		: std_logic;
signal state 				: state_type;
signal next_state 		: state_type;
signal substate			: substate_type;

signal draw_delayed		: std_logic;

begin
	
	datapath_entity_query : process(CLOCK, RESET_N)
		
		variable rendered_column 	: alien_grid_index_type := 0;
		variable rendered_alien  	: alien_column_index_type := 0;
		variable rendered_bullet   : bullet_array_index_type := 0;
	
	begin
		
		if (RESET_N = '0') then
		
			DRAW_SPRITE 		<= '0';
			SHOW 					<= '0';
			REQ_NEXT_SPRITE 	<= '0';
			render_asap 		<= '0';
			state 				<= WAITING;
			next_state 			<= RENDER;
			substate				<= ALIEN_QUERY;
			draw_delayed 		<= '0';
			REQUEST_ENTITY_SPRITE <= (0, 0, ENTITY_NONE);
			
			rendered_alien 	:= 0;
			rendered_column 	:= 0;
			rendered_bullet	:= 0;
			
		elsif rising_edge(CLOCK) then
			
			DRAW_SPRITE			<= draw_delayed;
			draw_delayed 		<= '0';
			SHOW					<= '0';
			REQ_NEXT_SPRITE 	<= '0';
		
			if (FRAME_TIME = '1') then
				render_asap <= '1';
			end if;
			
			case (state) is 
				when RENDER =>
					
					if (READY = '1') then
						state <= WAITING;
					else
						state <= WAITING_2;
					end if;
					
					REQ_NEXT_SPRITE 	<= '1'; -- DELETE ME
					next_state 			<= RENDER;
					draw_delayed 		<= '1';
					REQUEST_ENTITY_SPRITE <= (0, 0, ENTITY_NONE);
					
					case (substate) is 
					
						when ALIEN_QUERY => 

							REQUEST_ENTITY_SPRITE <= (rendered_column, rendered_alien, ENTITY_ALIEN);
					
							rendered_column := rendered_column + 1;
			
							if (rendered_column > COLUMNS_PER_GRID - 1) then
								rendered_column := 0;
								rendered_alien := rendered_alien + 1;
							end if;
				
							if (rendered_alien > ALIENS_PER_COLUMN - 1) then
								rendered_alien := 0;
								substate <= ALIEN_BULLET_QUERY;
							end if;
				
						when ALIEN_BULLET_QUERY =>
							
							REQUEST_ENTITY_SPRITE <= (rendered_bullet, 0, ENTITY_ALIEN_BULLET);
							
							rendered_bullet := rendered_bullet + 1;
							
							if (rendered_bullet > BULLET_COUNT - 1) then
								rendered_bullet := 0;
								substate <= PLAYER_BULLET_QUERY;
							end if;
							
						when PLAYER_BULLET_QUERY =>
							
							REQUEST_ENTITY_SPRITE <= (0, 0, ENTITY_PLAYER_BULLET);
							substate <= RAND_ALIEN_QUERY;
									
						when RAND_ALIEN_QUERY =>
							
							REQUEST_ENTITY_SPRITE <= (0,0, ENTITY_RANDOM_ALIEN);
							substate <= SHIELD_QUERY;
							
						when SHIELD_QUERY_QUERY =>
							
							REQUEST_ENTITY_SPRITE <= (0,0, ENTITY_SHIELD);
							substate <= PLAYER_QUERY;
							
						when PLAYER_QUERY =>
							
							REQUEST_ENTITY_SPRITE <= (0,0, ENTITY_PLAYER);
							substate <= RENDER_END;
							
						when RENDER_END =>
						
							next_state <= SHOW_SPRITES;
							substate <= ALIEN_QUERY;
							
						when others => --Unreachable
						
					end case;
					
				when SHOW_SPRITES =>
				
					state 		<= SHOW_SPRITES;
					next_state 	<= SHOW_SPRITES;
					
					if (render_asap = '1') then
					
						SHOW 					<= '1';
						render_asap 		<= '0';
						state 				<= WAITING;
						next_state 			<= RENDER;
						
						rendered_alien 	:= 0;
						rendered_column	:= 0;
					
					end if;
					
				when WAITING =>
					
					if (READY = '0') then
						state <= WAITING_2;
					end if;
				
				when WAITING_2 =>
					
					if (READY = '1') then 
						state <= next_state;
					end if;
				
				when others => -- UNREACHABLE
				
			end case;
			
		end if;
		
	end process;

end architecture;