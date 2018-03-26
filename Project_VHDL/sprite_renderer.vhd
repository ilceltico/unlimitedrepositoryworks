--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--use work.HI_package.all;
--use work.vga_package.all;
--
--entity View is 
--	port 
--	(
--		CLOCK				: in	std_logic;
--		RESET_N			: in 	std_logic;
--		DRAW_IMG			: in 	std_logic;
--		FB_READY			: in 	std_logic;
--		SPRITE			: in 	sprite_type;
--		X					: in 	xy_coord_type;
--		Y					: in 	xy_coord_type;
--		
--		FB_FLIP 			: out std_logic;
--		FB_DRAW_RECT   : out std_logic;
--		FB_COLOR       : out color_type;
--		FB_CLEAR 		: out std_logic;
--		FB_DRAW_LINE 	: out std_logic;
--		FB_FILL_RECT   : out std_logic;
--		FB_X0          : out xy_coord_type;
--		FB_Y0          : out xy_coord_type;
--		FB_X1          : out xy_coord_type;
--		FB_Y1          : out xy_coord_type
--	);
--end entity;
--
--architecture RTL of View is
--
--type state_type is (IDLE, WAITING, DRAWING);
--type substate_type is (CLEAR, DRAW, FLIP);
--signal state			: state_type;
--signal row				: integer;
--signal column			: integer;
--signal s					: sprite_type;
--signal substate 		: substate_type;
--
--begin
--	DrawImage: process(CLOCK, RESET_N)
--	begin
--	
--		if(RESET_N = '0') then
--			FB_CLEAR       <= '0';
--			FB_DRAW_RECT   <= '0';
--			FB_DRAW_LINE   <= '0';
--			FB_FILL_RECT   <= '0';
--			FB_FLIP        <= '0';
--			row 				<= 0;
--			column 			<= 0;
--			state <= IDLE;
--	
--		elsif(rising_edge(CLOCK)) then
--		
--			FB_CLEAR       <= '0';
--			FB_DRAW_RECT   <= '0';
--			FB_DRAW_LINE   <= '0';
--			FB_FILL_RECT   <= '0';
--			FB_FLIP        <= '0';
--		
--			case (state) is 
--				when IDLE => 
--					if (DRAW_IMG = '1') then
--						state <= WAITING;
--						substate <= CLEAR;
--						s <= SPRITE;
--					end if;
--					
--				when WAITING =>
--					if (FB_READY = '1') then
--						state <= DRAWING;
--					end if;
--				
--				when DRAWING =>
--				
--					state <= WAITING;
--				
--					case (substate) is 
--						when CLEAR =>
--							row <= 0;
--							column <= 0;
--							FB_COLOR     <= COLOR_BLACK;
--							FB_CLEAR     <= '1';
--							substate <= DRAW;
--							
--						when DRAW => 
--							if (column >= 31) then
--								column <= 0;
--								if (row >= 31) then
--									row <= 0;
--									substate <= FLIP;
--								else
--									row <= row + 1;
--								end if;
--							else
--								column <= column + 1;
--							end if;
--					
--							if (s.img_pixels(row, column) = '1') then
--								FB_X0 <= X + column;
--								FB_X1 <= X + column;
--								FB_Y0 <= Y + row;
--								FB_Y1 <= Y + row;
--								FB_COLOR <= s.color;
--								FB_DRAW_RECT <= '1';
--							end if;
--							
--						when FLIP =>
--							FB_FLIP <= '1';
--							state <= IDLE;
--					end case;
--			end case;
--		end if;
--	end process;
--	
--end architecture;
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;
use work.vga_package.all;

entity sprite_renderer is 
	port 
	(
		CLOCK				: in	std_logic;
		RESET_N			: in 	std_logic;
		DRAW_SPRITE		: in 	std_logic;
		FB_READY			: in 	std_logic;
		SPRITE			: in 	sprite_type;
		X					: in 	xy_coord_type;
		Y					: in 	xy_coord_type;
		SHOW				: in  std_logic;
		
		FB_FLIP 			: out std_logic;
		FB_DRAW_RECT   : out std_logic;
		FB_CLEAR 		: out std_logic;
		FB_COLOR       : out color_type;
		FB_X0          : out xy_coord_type;
		FB_Y0          : out xy_coord_type;
		FB_X1          : out xy_coord_type;
		FB_Y1          : out xy_coord_type;
		READY 			: out std_logic;
		
		DEBUG_OUT      : out std_logic
	);
end entity;

architecture RTL of sprite_renderer is

type state_type is (IDLE, WAITING, DRAWING, SHOWING, CLEARING);

signal state				: state_type;
signal next_state			: state_type;
signal row					: integer;
signal column				: integer;
signal sprite_to_draw	: sprite_type;
signal sprite_x			: xy_coord_type;
signal sprite_y			: xy_coord_type;
signal show_latched		: std_logic;

begin
	process(CLOCK, RESET_N)
	begin
	
		if(RESET_N = '0') then
			FB_CLEAR       <= '0';
			FB_DRAW_RECT   <= '0';
			FB_FLIP        <= '0';
			READY 			<= '1';
			FB_COLOR 		<= COLOR_BLACK;
			FB_X0 			<= 0;
			FB_X1 			<= 0;
			FB_Y0 			<= 0;
			FB_Y1 			<= 0;
			row 				<= 0;
			column 			<= 0;
			state <= CLEARING;
			
			DEBUG_OUT <= '0';
	
		elsif(rising_edge(CLOCK)) then
			
			DEBUG_OUT	   <= '0';
			FB_CLEAR       <= '0';
			FB_DRAW_RECT   <= '0';
			FB_FLIP        <= '0';
			READY 			<= '0';
			FB_X0 			<= 0;
			FB_X1 			<= 0;
			FB_Y0 			<= 0;
			FB_Y1 			<= 0;
			FB_COLOR 		<= COLOR_BLACK;
		
			case (state) is 
				when IDLE => 
		
					READY <= '1';
					row 			<= 0;
					column		<= 0;
					
					if (SHOW = '1') then
						state <= WAITING;
						next_state <= SHOWING;
					elsif (DRAW_SPRITE = '1') then
						state 			<= WAITING;
						next_state 		<= DRAWING;
						sprite_to_draw <= SPRITE;
						sprite_x 		<= X;
						sprite_y 		<= Y;
						DEBUG_OUT 	<= '1'; -- DEBUG
					end if;
					
				when WAITING =>
					
					if (FB_READY = '1') then
						state <= next_state;
					end if;
				
				when DRAWING =>
				
					state <= WAITING;
					next_state <= DRAWING;
					-- DEBUG_OUT 	<= '1'; -- DEBUG
					
					if (column >= 31) then
						column <= 0;
						if (row >= 31) then
							row <= 0;
							state <= IDLE;
							-- READY <= '1';
						else
							row <= row + 1;
						end if;
					else
						column <= column + 1;
					end if;
					
					if (sprite_to_draw.img_pixels(row, column) = '1') then
						FB_X0 		 	<= sprite_x + column;
						FB_X1 		 	<= sprite_x + column;
						FB_Y0 		 	<= sprite_y + row;
						FB_Y1 		 	<= sprite_y + row;
						FB_COLOR 	 	<= sprite_to_draw.color;
						FB_DRAW_RECT 	<= '1';
					end if;
			
				when SHOWING => 
				
					FB_FLIP 	  	<= '1';
					state 	  	<= WAITING;
					next_state 	<= CLEARING;
					
				when CLEARING =>
				
					-- READY <= '1';
					FB_CLEAR 	<= '1';
					state 		<= IDLE;
				
			end case;
		end if;
	end process;
	
end architecture;
