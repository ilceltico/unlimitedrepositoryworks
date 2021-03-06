library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.tetris_package.all;
use work.vga_package.all;


entity Tetris_View is
	port
	(
		CLOCK          : in  std_logic;
		RESET_N        : in  std_logic;
		SPRITE 			: in 	sprite_type;
		REDRAW         : in  std_logic;
		X					: in  xy_coord_type;
		Y					: in  xy_coord_type;
		
		FB_READY       : in  std_logic;
		FB_CLEAR       : out std_logic;
		FB_DRAW_RECT   : out std_logic;
		FB_DRAW_LINE   : out std_logic;
		FB_FILL_RECT   : out std_logic;
		FB_FLIP        : out std_logic;
		FB_COLOR       : out color_type;
		FB_X0          : out xy_coord_type;
		FB_Y0          : out xy_coord_type;
		FB_X1          : out xy_coord_type;
		FB_Y1          : out xy_coord_type;
		
		QUERY_CELL     : out block_pos_type;
		CELL_CONTENT   : in  board_cell_type
		
	);
end entity;


architecture RTL of Tetris_View is
	constant LEFT_MARGIN    : integer := 8;
	constant TOP_MARGIN     : integer := 8;
	constant BLOCK_SIZE     : integer := 20;
	constant BLOCK_SPACING  : integer := 1;
	
	type   state_type    is (IDLE, WAITING, DRAWING);
	type   substate_type is (CLEAR, DRAW, FLIP);
	signal state        : state_type;
	signal s 			  : sprite_type;
	signal row			  : integer;
	signal column       : integer;
	signal substate     : substate_type;
	signal query_cell_r : block_pos_type;

begin

	QUERY_CELL <= query_cell_r;

	process(CLOCK, RESET_N)
	begin
	
		if(RESET_N = '0') then
			FB_CLEAR       <= '0';
			FB_DRAW_RECT   <= '0';
			FB_DRAW_LINE   <= '0';
			FB_FILL_RECT   <= '0';
			FB_FLIP        <= '0';
			row 				<= 0;
			column 			<= 0;
			state <= IDLE;
	
		elsif(rising_edge(CLOCK)) then
		
			FB_CLEAR       <= '0';
			FB_DRAW_RECT   <= '0';
			FB_DRAW_LINE   <= '0';
			FB_FILL_RECT   <= '0';
			FB_FLIP        <= '0';
		
			case (state) is 
				when IDLE => 
					if (REDRAW = '1') then
						state <= WAITING;
						substate <= CLEAR;
						s <= SPRITE;
					end if;
					
				when WAITING =>
					if (FB_READY = '1') then
						state <= DRAWING;
					end if;
				
				when DRAWING =>
				
					state <= WAITING;
				
					case (substate) is 
						when CLEAR =>
							row <= 0;
							column <= 0;
							FB_COLOR     <= COLOR_BLACK;
							FB_CLEAR     <= '1';
							substate <= DRAW;
							
						when DRAW => 
							if (column >= 31) then
								column <= 0;
								if (row >= 31) then
									row <= 0;
									substate <= FLIP;
								else
									row <= row + 1;
								end if;
							else
								column <= column + 1;
							end if;
					
							if (s.img_pixels(row, column) = '1') then
								FB_X0 <= X + column;
								FB_X1 <= X + column;
								FB_Y0 <= Y + row;
								FB_Y1 <= Y + row;
								FB_COLOR <= s.color;
								FB_DRAW_RECT <= '1';
							end if;
							
						when FLIP =>
							FB_FLIP <= '1';
							state <= IDLE;
					end case;
			end case;
		end if;
	end process;
	
end architecture;
