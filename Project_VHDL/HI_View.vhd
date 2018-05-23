library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.hi_package.all;
use work.vga_package.all;

entity HI_View is 
	generic
	(
		UPSCALE_PRECISION : integer
	);
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
		FB_FILL_RECT	: out std_logic;
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
type substate_type is (COMPUTE_UPSCALE_FACTOR_X, COMPUTE_UPSCALE_FACTOR_Y, DRAWING_PIXELS);

	signal state				: state_type := CLEARING;
	signal substate			: substate_type := COMPUTE_UPSCALE_FACTOR_X;
	signal next_state			: state_type := INIT;
	signal row					: integer := 0;
	signal column				: integer := 0;
	signal show_asap			: std_logic := '0';

begin
	process(CLOCK, RESET_N)
	
		variable pixel_scale_factor_x : integer := 1;
		variable pixel_scale_factor_y : integer := 1;
		variable reg_sprite				: sprite_type := sprite_empty;
		variable reg_hitbox 				: hitbox_type := (0,0,1,1);
		variable reg_fb_x0				: xy_coord_type := 0; 
		variable reg_fb_x1				: xy_coord_type := 0;
		variable reg_fb_y0				: xy_coord_type := 0;
		variable reg_fb_y1				: xy_coord_type := 0;
	
	begin
	
		if(RESET_N = '0') then
		
			FB_CLEAR       <= '0';
			FB_DRAW_RECT 	<= '0';
			FB_FILL_RECT   <= '0';
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
			reg_sprite 		:= sprite_empty;
			reg_hitbox		:= (0,0,1,1);
			state 			<= CLEARING;
			substate 		<= COMPUTE_UPSCALE_FACTOR_X;
			reg_fb_x0 		:= 0;
			reg_fb_x1		:= 0;
			reg_fb_y0		:= 0;
			reg_fb_y1		:= 0;
	
		elsif(rising_edge(CLOCK)) then
			
			FB_CLEAR       <= '0';
			FB_DRAW_RECT 	<= '0';
			FB_FILL_RECT   <= '0';
			FB_FLIP        <= '0';
			READY 			<= '0';
			FB_X0 			<= 0;
			FB_X1 			<= 0;
			FB_Y0 			<= 0;
			FB_Y1 			<= 0;
			reg_fb_x0 		:= 0;
			reg_fb_x1		:= 0;
			reg_fb_y0		:= 0;
			reg_fb_y1		:= 0;
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
					
						READY 					<= '0';
						state 					<= WAITING;
						next_state 				<= DRAWING;
						substate 				<= COMPUTE_UPSCALE_FACTOR_X;
						reg_sprite				:= SPRITE;
						reg_hitbox 				:= HITBOX;
					
					end if;
					
				when WAITING =>
					
					if (FB_READY = '1') then
					
						state <= next_state;
					
					end if;
				
				when DRAWING =>
				
					case (substate) is 
					
						when COMPUTE_UPSCALE_FACTOR_X =>
						
							pixel_scale_factor_x := (reg_hitbox.size_x * UPSCALE_PRECISION) / reg_sprite.logic_dim_x;
							substate <= COMPUTE_UPSCALE_FACTOR_Y;
						
						when COMPUTE_UPSCALE_FACTOR_Y =>
							
							pixel_scale_factor_y := (reg_hitbox.size_y * UPSCALE_PRECISION) / reg_sprite.logic_dim_y;
							substate <= DRAWING_PIXELS;
						
						when DRAWING_PIXELS =>
				
							state 		<= WAITING;
							next_state 	<= DRAWING;
						
							if (column >= reg_sprite.logic_dim_x - 1) then
							
								column <= 0;
								if (row >= reg_sprite.logic_dim_y - 1) then
									
									row <= 0;
									next_state <= IDLE;
									substate <= COMPUTE_UPSCALE_FACTOR_X;
								
								else
								
									row <= row + 1;
								
								end if;
								
							else
							
								column <= column + 1;
							
							end if;
							
							if (reg_sprite.img_pixels(row, column) = '1') then
							
								reg_fb_x0 	 	:= reg_hitbox.up_left_x + (column * pixel_scale_factor_x) / UPSCALE_PRECISION;
								reg_fb_x1	 	:= reg_hitbox.up_left_x + ((column + 1) * pixel_scale_factor_x) / UPSCALE_PRECISION - 1;
								reg_fb_y0	 	:= reg_hitbox.up_left_y + (row * pixel_scale_factor_y) / UPSCALE_PRECISION;
								reg_fb_y1	 	:= reg_hitbox.up_left_y + ((row + 1) * pixel_scale_factor_y) / UPSCALE_PRECISION - 1;
								
		--						if (reg_fb_x0 <= reg_fb_x1 and reg_fb_y0 <= reg_fb_y1) then 
								if (reg_fb_x0 <= reg_fb_x1 and reg_fb_y0 <= reg_fb_y1 and reg_fb_x1 - reg_fb_x0 <= reg_hitbox.size_x and reg_fb_y1 - reg_fb_y0 <= reg_hitbox.size_y) then 
						
									FB_FILL_RECT 	<= '1';
									FB_COLOR 	 	<= reg_sprite.color;
									FB_X0 			<= reg_fb_x0;
									FB_X1 			<= reg_fb_x1;
									FB_Y0 			<= reg_fb_y0;
									FB_Y1 			<= reg_fb_y1;
								
								end if;
									
							end if;
				
				end case;
				
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
					
					FB_DRAW_RECT 	<= '1';
					FB_X0 			<= 0;
					FB_X1 			<= 511;
					FB_Y0 			<= 0;
					FB_Y1 			<= 479;
					FB_COLOR 		<= COLOR_RED;
					state 			<= WAITING;
					next_state 		<= IDLE;
				
			end case;
		end if;
	end process;
	
end architecture;
