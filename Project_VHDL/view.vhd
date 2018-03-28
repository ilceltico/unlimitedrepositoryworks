library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;
use work.vga_package.all;

entity view is 
	port 
	(
		CLOCK				: in	std_logic;
		RESET_N			: in 	std_logic;
		READY 			: in  std_logic;
		
		DRAW_SPRITE		: out std_logic;
		SPRITE			: out sprite_type;
		SPRITE_X			: out xy_coord_type;
		SPRITE_Y			: out	xy_coord_type;
		SHOW				: out std_logic;
		
		DEBUG_OUT 		: out std_logic;
		DEBUG_STATE		: out integer
	);
end entity;

architecture RTL of view is 

type state_type is (RENDER_0, RENDER_1, RENDER_2, RENDER_3, RENDER_4, SHOW_SPRITES, WAITING);

signal frame_time		: std_logic;
signal render_asap	: std_logic;
signal state 			: state_type;
signal next_state 	: state_type;

signal x					: xy_coord_type;
signal y					: xy_coord_type;

begin

	fps : process(CLOCK, RESET_N)
		variable counter : integer range 0 to (3 - 1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			frame_time <= '0';
		elsif (rising_edge(CLOCK)) then
			if(counter = counter'high) then
				counter := 0;
				frame_time <= '1';
			else
				counter := counter+1;
				frame_time <= '0';			
			end if;
		end if;
	end process;
	
	location : process (CLOCK, RESET_N) 
	begin
		if (RESET_N = '0') then
			x <= 0;
			y <= 0;
		elsif rising_edge (CLOCK) then
			if (frame_time = '1') then
				x <= x + 1;
				y <= y + 1;
			end if;
		end if;
	end process;
	
	main : process(CLOCK, RESET_N)
	begin
		
		case (state) is 
			when RENDER_0 => 
				DEBUG_STATE <= 0;
--			when RENDER_1 => 
--				DEBUG_STATE <= 1;
--			when RENDER_2 => 
--				DEBUG_STATE <= 2;
--			when RENDER_3 => 
--				DEBUG_STATE <= 3;
--			when RENDER_4 => 
--				DEBUG_STATE <= 4;
			when SHOW_SPRITES => 
				DEBUG_STATE <= 5;
			when WAITING =>
				DEBUG_STATE <= 9;
			when others => -- UNREACHABLE
		end case;
		
		if (RESET_N = '0') then
			state <= WAITING;
			next_state <= RENDER_0;
			DRAW_SPRITE <= '0';
			SHOW <= '0';
			SPRITE <= dummy_sprite_1;
			SPRITE_X <= 0;
			SPRITE_Y <= 0;
			render_asap <= '0';
			DEBUG_OUT <= '0';
			
		elsif rising_edge(CLOCK) then
			
			DRAW_SPRITE <= '0';
			SHOW <= '0';
			SPRITE <= dummy_sprite_1;
			SPRITE_X <= 0;
			SPRITE_Y <= 0;
			DEBUG_OUT <= render_asap;
			
			if (frame_time = '1' and render_asap = '0') then
				render_asap <= '1';
			end if;
			
				case (state) is 
					when RENDER_0 =>  
						SPRITE <= dummy_sprite_1;
						SPRITE_X <= x;
						SPRITE_Y <= y;
						DRAW_SPRITE <= '1';
						DEBUG_OUT <= '1';
						state <= WAITING;
						next_state <= SHOW_SPRITES;
					when SHOW_SPRITES =>
						state <= WAITING;
						next_state <= RENDER_0;
						if (render_asap = '1') then
							SHOW <= '1';
							render_asap <= '0';
						end if;
					when WAITING =>
						if (READY = '1') then
							state <= next_state;
						end if;
					when others => -- UNREACHABLE
				end case;
		end if;
	end process;

end architecture;