library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;
use work.vga_package.all;

entity HI_Datapath is 
	port 
	(
		CLOCK							: in	std_logic;
		RESET_N						: in 	std_logic;
		CHANGE_ALIEN_SPRITES 	: in  std_logic;
		REQ_NEXT_SPRITE			: in 	std_logic;
		
		SPRITE 						: out sprite_type;
		HITBOX						: out hitbox_type
	);
end entity;

architecture RTL of HI_Datapath is 

	signal alien_grid : alien_grid_type;

begin
	
	process(CLOCK, RESET_N) is 
	
	variable rendered_column : alien_grid_index_type := 0;
	variable rendered_alien  : alien_column_index_type := 0;
	variable reg_req			 : std_logic := '0';
	
	begin
		
		if (RESET_N = '0') then 
			
			rendered_alien := 0;
			rendered_column := 0;
			reg_req := '0';
			SPRITE <= sprites(0);
			HITBOX.up_left_x <= 0;
			HITBOX.up_left_y <= 0;
			HITBOX.size_x <= 32;
			HITBOX.size_y <= 32;
			
		elsif (rising_edge(CLOCK)) then	
			
			if (REQ_NEXT_SPRITE = '0') then

				reg_req := '1';

			end if;
			
			if (REQ_NEXT_SPRITE = '1' and reg_req = '1') then
			
				reg_req := '0';
				
				SPRITE <= sprites(alien_grid(rendered_column)(rendered_alien).sprite_indexes(alien_grid(rendered_column)(rendered_alien).current_index));
				HITBOX <= alien_grid(rendered_column)(rendered_alien).hitbox;
				
				rendered_column := rendered_column + 1;
			
				if (rendered_column > COLUMNS_PER_GRID - 1) then
					rendered_column := 0;
					rendered_alien := rendered_alien + 1;
				end if;
				
				if (rendered_alien > ALIENS_PER_COLUMN - 1) then
					rendered_alien := 0;
				end if;
				
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