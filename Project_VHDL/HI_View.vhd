library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.hi_package.all;
use work.vga_package.all;

entity HI_View is 
	port 
	(
		CLOCK				: in	std_logic;
		RESET_N			: in 	std_logic;
		DRAW_SPRITE		: in 	std_logic;
		FB_READY			: in 	std_logic;
		SPRITE			: in 	sprite_type;
		HITBOX			: in 	hitbox_type;
		SHOW				: in  std_logic;
		FB_VSYNC			: in 	std_logic;
		
		FB_FLIP 			: out std_logic;
		FB_DRAW_RECT	: out std_logic;
		FB_CLEAR 		: out std_logic;
		FB_COLOR       : out color_type;
		FB_X0          : out xy_coord_type;
		FB_Y0          : out xy_coord_type;
		FB_X1          : out xy_coord_type;
		FB_Y1          : out xy_coord_type;
		READY 			: out std_logic
	);
end entity;

architecture RTL of HI_View is

type state_type is (IDLE, WAITING, DRAWING, SHOWING, CLEARING, INIT);

signal state				: state_type;
signal next_state			: state_type;
signal row					: integer;
signal column				: integer;
signal reg_sprite				: sprite_type;
signal reg_hitbox 		: hitbox_type;
signal show_asap			: std_logic;

begin
	process(CLOCK, RESET_N)
	begin
	
		if(RESET_N = '0') then
		
			FB_CLEAR       <= '0';
			FB_DRAW_RECT   <= '0';
			FB_FLIP        <= '0';
			READY 			<= '0';
			FB_COLOR 		<= COLOR_BLACK;
			FB_X0 			<= 0;
			FB_X1 			<= 0;
			FB_Y0 			<= 0;
			FB_Y1 			<= 0;
			row 				<= 0;
			column 			<= 0;
			show_asap 		<= '0';
			state 			<= CLEARING;
	
		elsif(rising_edge(CLOCK)) then
			
			FB_CLEAR       <= '0';
			FB_DRAW_RECT   <= '0';
			FB_FLIP        <= '0';
			READY 			<= '0';
			FB_X0 			<= 0;
			FB_X1 			<= 0;
			FB_Y0 			<= 0;
			FB_Y1 			<= 0;
			FB_COLOR 		<= COLOR_BLACK;
			
			if (SHOW = '1') then
			
				show_asap <= '1';
			
			end if;
		
			case (state) is 
			
				when IDLE => 
	
					READY 		<= '1';
					row 			<= 0;
					column		<= 0;
					
					if (show_asap = '1' and DRAW_SPRITE = '0') then
					
						READY 		<= '0';
						state 		<= WAITING;
						next_state 	<= SHOWING;
						show_asap 	<= '0';
					
					end if;
					
					if (DRAW_SPRITE = '1') then
					
						READY 			<= '0';
						state 			<= WAITING;
						next_state 		<= DRAWING;
						reg_sprite		<= SPRITE;
						reg_hitbox 		<= HITBOX;
						
					
					end if;
					
				when WAITING =>
					
					if (FB_READY = '1') then
					
						state <= next_state;
					
					end if;
				
				when DRAWING =>
				
					state 		<= WAITING;
					next_state 	<= DRAWING;
					
					if (column >= reg_hitbox.size_x - 1) then
					
						column <= 0;
						if (row >= reg_hitbox.size_y - 1) then
							
							row <= 0;
							next_state <= IDLE;
						
						else
						
							row <= row + 1;
						
						end if;
						
					else
					
						column <= column + 1;
					
					end if;
					
					if (reg_sprite.img_pixels(row, column) = '1') then
					
						FB_X0 		 	<= reg_hitbox.up_left_x + column;
						FB_X1 		 	<= reg_hitbox.up_left_x + column;
						FB_Y0 		 	<= reg_hitbox.up_left_y + row;
						FB_Y1 		 	<= reg_hitbox.up_left_y + row;
						FB_COLOR 	 	<= reg_sprite.color;
						FB_DRAW_RECT 	<= '1';
					
					end if;
			
				when SHOWING => 
				
					if (FB_VSYNC = '0') then
					
						FB_FLIP 	  	<= '1';
						state 	  	<= WAITING;
						next_state 	<= CLEARING;
					
					end if;
					
				when CLEARING =>
				
					FB_CLEAR 	<= '1';
					state 		<= WAITING;
					next_state  <= INIT;
				
				when INIT =>
					
					FB_DRAW_RECT <= '1';
					FB_X0 <= 0;
					FB_X1 <= 511;
					FB_Y0 <= 0;
					FB_Y1 <= 479;
					FB_COLOR <= COLOR_RED;
					state <= WAITING;
					next_state <= IDLE;
				
			end case;
		end if;
	end process;
	
end architecture;
