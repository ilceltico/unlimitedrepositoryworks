library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;
use work.vga_package.all;

entity Hi_View_Control_Unit is 
	port (
		CLOCK								: in	std_logic;
		FRAME_TIME						: in  std_logic;
		RESET_N							: in 	std_logic;
		READY 							: in  std_logic;
		GAMEOVER							: in 	std_logic;
		NEW_LEVEL						: in 	std_logic;
		YOUWIN							: in  std_logic;
		
		DRAW_SPRITE						: out std_logic;
		SHOW								: out std_logic;
		REQ_NEXT_SPRITE				: out std_logic;
		REQUEST_ENTITY_SPRITE		: out datapath_entity_index_type
	);
end entity;

architecture RTL of Hi_View_Control_Unit is 

type state_type 		is (RENDER, SHOW_SPRITES, WAITING, WAITING_2);
type substate_type 	is (ALIEN_QUERY, ALIEN_BULLET_QUERY, PLAYER_BULLET_QUERY, PLAYER_QUERY, RAND_ALIEN_QUERY, SHIELD_QUERY, GAMEOVER_QUERY, YOUWIN_QUERY, NEW_LEVEL_QUERY, RENDER_END);

signal render_asap		: std_logic;
signal state 				: state_type;
signal next_state 		: state_type;
signal substate			: substate_type;

signal draw_delayed		: std_logic;

begin
	
	datapath_entity_query : process(CLOCK, RESET_N)
		
		variable rendered_column 		: alien_grid_index_type 	:= 0;
		variable rendered_alien  		: alien_column_index_type 	:= 0;
		
		variable rendered_bullet   	: bullet_array_index_type 	:= 0;
		
		variable rendered_shield 		: shield_grid_index_type 	:= 0;
		variable rendered_part			: shield_part_index_type 	:= 0;
		
		variable rendered_screen_part	: screen_part_index_type	:= 0;
	
	begin
		
		if (RESET_N = '0') then
		
			DRAW_SPRITE 				<= '0';
			SHOW 							<= '0';
			REQ_NEXT_SPRITE 			<= '0';
			REQUEST_ENTITY_SPRITE 	<= (0, 0, ENTITY_NONE);
			
			render_asap 				<= '0';
			state 						<= WAITING;
			next_state 					<= RENDER;
			substate						<= ALIEN_QUERY;
			draw_delayed 				<= '0';
			
			rendered_alien 			:= 0;
			rendered_column 			:= 0;
			
			rendered_bullet			:= 0;
			
			rendered_part 				:= 0;
			rendered_shield			:= 0;
			
			rendered_screen_part		:= 0;
			
		elsif rising_edge(CLOCK) then
			
			DRAW_SPRITE			<= draw_delayed;
			SHOW					<= '0';
			REQ_NEXT_SPRITE 	<= '0';
			
			draw_delayed 		<= '0';
		
			if (FRAME_TIME = '1') then
				render_asap 	<= '1';
			end if;
			
			case (state) is 
			
			when RENDER =>
					
				if (READY = '1') then
					state <= WAITING;
				else
					state <= WAITING_2;
				end if;
					
				REQ_NEXT_SPRITE 			<= '1'; -- DELETE ME
				REQUEST_ENTITY_SPRITE 	<= (0,0,ENTITY_NONE);
				
				next_state 					<= RENDER;
				draw_delayed 				<= '1';
			
				case (substate) is 
					
				when ALIEN_QUERY => 

					REQUEST_ENTITY_SPRITE <= (rendered_column, rendered_alien, ENTITY_ALIEN);

					if (rendered_column = COLUMNS_PER_GRID - 1) then 
					
						rendered_column := 0;
					
						if (rendered_alien = ALIENS_PER_COLUMN - 1) then
						
							rendered_alien := 0;
							substate 		<= ALIEN_BULLET_QUERY;
						
						else
							rendered_alien := rendered_alien + 1;
						
						end if;
					
					else
						rendered_column := rendered_column + 1;
					
					end if;
				
				when ALIEN_BULLET_QUERY =>
							
					REQUEST_ENTITY_SPRITE 	<= (rendered_bullet, 0, ENTITY_ALIEN_BULLET);
							
					rendered_bullet 			:= rendered_bullet + 1;
							
					if (rendered_bullet > BULLET_COUNT - 1) then
						
						rendered_bullet 	:= 0;
						substate 			<= PLAYER_BULLET_QUERY;
					
					end if;
							
				when PLAYER_BULLET_QUERY =>
							
					REQUEST_ENTITY_SPRITE 	<= (0,0,ENTITY_PLAYER_BULLET);
					substate 					<= RAND_ALIEN_QUERY;
									
				when RAND_ALIEN_QUERY =>
							
					REQUEST_ENTITY_SPRITE 	<= (0,0, ENTITY_RANDOM_ALIEN);
					substate 					<= SHIELD_QUERY;
							
				when SHIELD_QUERY =>
							
					REQUEST_ENTITY_SPRITE 	<= (rendered_shield, rendered_part, ENTITY_SHIELD);
							
					if (rendered_part = SHIELD_PARTS - 1) then 
					
						rendered_part := 0;
					
						if (rendered_shield = SHIELD_COUNT - 1) then
						
							rendered_shield 	:= 0;
							substate 			<= PLAYER_QUERY;
						
						else
							rendered_shield := rendered_shield + 1;
						
						end if;
						
					else
						rendered_part := rendered_part + 1;
					
					end if;
							
				when PLAYER_QUERY =>
							
					REQUEST_ENTITY_SPRITE 	<= (0,0, ENTITY_PLAYER);
					substate 					<= RENDER_END;
				
				when NEW_LEVEL_QUERY =>
					
					REQUEST_ENTITY_SPRITE 	<= (NEW_LEVEL_SCREEN_INDEX,rendered_screen_part, ENTITY_SCREEN);
							
					rendered_screen_part 	:= rendered_screen_part + 1;
							
					if (rendered_screen_part > NEW_LEVEL_SCREEN_PART_COUNT - 1) then
						
						rendered_screen_part 	:= 0;
						substate 					<= RENDER_END;
					
					end if;
					
				when GAMEOVER_QUERY =>
					
					REQUEST_ENTITY_SPRITE 	<= (GAMEOVER_SCREEN_INDEX,rendered_screen_part, ENTITY_SCREEN);
							
					rendered_screen_part 	:= rendered_screen_part + 1;
							
					if (rendered_screen_part > GAMEOVER_SCREEN_PART_COUNT - 1) then
						
						rendered_screen_part 	:= 0;
						substate 					<= RENDER_END;
					
					end if;
	
				when YOUWIN_QUERY =>
				
					REQUEST_ENTITY_SPRITE 	<= (YOUWIN_SCREEN_INDEX, rendered_screen_part, ENTITY_SCREEN);
							
					rendered_screen_part 	:= rendered_screen_part + 1;
							
					if (rendered_screen_part > YOUWIN_SCREEN_PART_COUNT - 1) then
						
						rendered_screen_part 	:= 0;
						substate 					<= RENDER_END;
					
					end if;
					
				when RENDER_END =>
						
					next_state 	<= SHOW_SPRITES;
					substate 	<= ALIEN_QUERY;
					
					if (GAMEOVER = '1') then 
						substate <= GAMEOVER_QUERY;
						
					elsif (YOUWIN = '1') then 
						substate <= YOUWIN_QUERY;
					
					elsif (NEW_LEVEL = '1') then
						substate <= NEW_LEVEL_QUERY;
					
					end if;
							
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