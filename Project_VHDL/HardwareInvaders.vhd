library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_package.all;
use work.hi_package.all;

entity HardwareInvaders is
	port
	(
		CLOCK_50            : in  std_logic;
		KEY                 : in  std_logic_vector(3 downto 0);
		SW                  : in  std_logic_vector(9 downto 0);
		
		VGA_R               : out std_logic_vector(3 downto 0);
		VGA_G               : out std_logic_vector(3 downto 0);
		VGA_B               : out std_logic_vector(3 downto 0);
		VGA_HS              : out std_logic;
		VGA_VS              : out std_logic;
		
		SRAM_ADDR           : out   std_logic_vector(17 downto 0);
		SRAM_DQ             : inout std_logic_vector(15 downto 0);
		SRAM_CE_N           : out   std_logic;
		SRAM_OE_N           : out   std_logic;
		SRAM_WE_N           : out   std_logic;
		SRAM_UB_N           : out   std_logic;
		SRAM_LB_N           : out   std_logic;
		
		LEDR					  : out 	 std_logic_vector(9 downto 0);
		LEDG					  : out 	 std_logic_vector(7 downto 0);
		PS2_CLK				  : in std_logic;
		PS2_DAT				  : in std_logic
	);
end entity;

architecture RTL of HardwareInvaders is
	signal clock_50MHz        : std_logic;
	signal clock_debug		  : std_logic;
	signal clock_100MHz       : std_logic;
	signal RESET_N            : std_logic;
	signal time_1us			  : std_logic;
	signal show					  : std_logic;
	signal draw_sprite		  : std_logic;
	signal fb_ready           : std_logic;
	signal fb_clear           : std_logic;
	signal fb_flip            : std_logic;
	signal fb_draw_rect       : std_logic;
	signal fb_draw_line       : std_logic;
	signal fb_fill_rect       : std_logic;
	signal sprite_x           : xy_coord_type;
	signal sprite_y           : xy_coord_type;
	signal fb_x0              : xy_coord_type;
	signal fb_y0              : xy_coord_type;
	signal fb_x1              : xy_coord_type;
	signal fb_y1              : xy_coord_type;
	signal fb_color           : color_type;
	signal sprite_to_render	  : sprite_type;
	signal hitbox_to_render	  : hitbox_type;
	signal sr_ready			  : std_logic;
	signal reset_sync_reg     : std_logic;
	signal frame_time			  : std_logic;
	signal fb_vsync			  : std_logic;
	signal req_next_sprite 	  : std_logic;
	signal request_entity_sprite	: datapath_entity_index_type;
	signal random_alien_movement : direction_type;
	signal alien_grid_movement : direction_type;
	signal player_movement		: direction_type;
	signal alien_border_reached	: direction_type;
	signal rand_alien_border_reached	: direction_type;
	signal player_border_reached 	: direction_type;
	signal show_rand_alien 	: std_logic;
	signal column_cannot_shoot : std_logic;
	signal alien_shoot			: std_logic;
	signal player_shoot			: std_logic;
	signal advance_player_bullet : std_logic;
	signal advance_alien_bullets : std_logic;
	signal destroy					: datapath_entity_index_type;
	signal hide 					: datapath_entity_index_type;
	signal collision 				: collision_type;
	signal column_index 			: alien_grid_index_type;
	
	signal ps2_code_new 				: std_logic;
	signal ps2_code					: std_logic_vector(7 downto 0);
	signal keyboard_move_left		: std_logic;
	signal keyboard_move_right		: std_logic;
	signal keyboard_shoot 			: std_logic;
	signal keyboard_start 			: std_logic;
	
	signal move_left					: std_logic;
	signal move_right 				: std_logic;
	signal shoot						: std_logic;
	signal start						: std_logic;
	
	signal rand_output				: std_logic_vector(RAND_ALIEN_GENERATION_TIME_BITS-1 downto 0);
	
begin

	pll : entity work.PLL
		port map (
			inclk0  => CLOCK_50,
			c0      => clock_100MHz,
			c1      => clock_50MHz
		); 
	
					
	reset_sync : process(CLOCK_50)
	begin
		if (rising_edge(CLOCK_50)) then
			reset_sync_reg <= SW(9);
			RESET_N <= reset_sync_reg;
		end if;
	end process;

	reference_time_gen : process(clock_50Mhz, RESET_N)
		variable counter : integer range 0 to (REFERENCE_TIME_50MHz - 1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			time_1us <= '0';
		elsif (rising_edge(clock_50MHz)) then
			if(counter = counter'high) then
				counter := 0;
				time_1us <= '1';
			else
				counter := counter+1;
				time_1us <= '0';			
			end if;
		end if;
	end process;

	frame_time_gen : process(clock_50MHz, RESET_N)
		variable counter : integer range 0 to (FRAME_TIME_1us - 1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			frame_time <= '0';
		elsif (rising_edge(clock_50MHz)) then
			frame_time <= '0';
			if (time_1us = '1') then
				if(counter = counter'high) then
					counter := 0;
					frame_time <= '1';
				else
					counter := counter+1;
					frame_time <= '0';			
				end if;
			end if;
		end if;
	end process;
	
	VGA_VS <= fb_vsync;
	
	vga : entity work.VGA_Framebuffer
		port map (
			CLOCK     => clock_100MHz,
			RESET_N   => RESET_N,
			READY     => fb_ready,
			COLOR     => fb_color,
			CLEAR     => fb_clear,
			DRAW_RECT => fb_draw_rect,
			FILL_RECT => fb_fill_rect,
			DRAW_LINE => '0',
			FLIP      => fb_flip,	
			X0        => fb_x0,
			Y0        => fb_y0,
			X1        => fb_x1,
			Y1        => fb_y1,
				
			VGA_R     => VGA_R,
			VGA_G     => VGA_G,
			VGA_B     => VGA_B,
			VGA_HS    => VGA_HS,
			VGA_VS    => fb_vsync,
		
			SRAM_ADDR => SRAM_ADDR,
			SRAM_DQ   => SRAM_DQ,			
			SRAM_CE_N => SRAM_CE_N,
			SRAM_OE_N => SRAM_OE_N,
			SRAM_WE_N => SRAM_WE_N,
			SRAM_UB_N => SRAM_UB_N,
			SRAM_LB_N => SRAM_LB_N
		);

	view_control_unit : entity work.HI_View_Control_Unit
		port map 
		(
			CLOCK				=> clock_50MHz,
			FRAME_TIME 		=> frame_time,
			RESET_N			=> RESET_N,
			READY 			=> sr_ready,
			
			DRAW_SPRITE		=> draw_sprite,
			SHOW				=> show,
			REQ_NEXT_SPRITE => req_next_sprite,
			REQUEST_ENTITY_SPRITE => request_entity_sprite
		);
		
	view : entity work.HI_View
		generic map 
		(
			UPSCALE_PRECISION => 1024
		)
		port map 
		(
			CLOCK				=> clock_50MHz,
			RESET_N			=> RESET_N,
			DRAW_SPRITE		=> draw_sprite,
			FB_READY			=> fb_ready,
			SPRITE			=> sprite_to_render,
			HITBOX			=> hitbox_to_render,
			SHOW				=> show,
			FB_VSYNC			=> fb_vsync,
			
			FB_FLIP 			=> fb_flip,
			FB_DRAW_RECT	=> fb_draw_rect,
			FB_FILL_RECT   => fb_fill_rect,
			FB_CLEAR 		=> fb_clear,
			FB_COLOR       => fb_color,
			FB_X0          => fb_x0,
			FB_Y0          => fb_y0,
			FB_X1          => fb_x1,
			FB_Y1          => fb_y1,
			READY 			=> sr_ready
		);		
		
		datapath : entity work.HI_Datapath
		port map 
		(
			CLOCK							=> clock_50MHz,
			RESET_N						=> RESET_N,
			REQ_NEXT_SPRITE 			=> req_next_sprite,
			REQUEST_ENTITY_SPRITE	=> request_entity_sprite,
			PLAYER_MOVEMENT			=> player_movement,
			RAND_ALIEN_MOVEMENT		=> random_alien_movement,
			SHOW_RAND_ALIEN			=> show_rand_alien,
			ALIEN_GRID_MOVEMENT		=> alien_grid_movement,
			COLUMN_INDEX				=> column_index,
			DESTROY 						=> destroy,
			HIDE							=> hide,
			ADVANCE_PLAYER_BULLET	=> advance_player_bullet,
			ADVANCE_ALIEN_BULLETS	=> advance_alien_bullets,
			ALIEN_SHOOT					=> alien_shoot,
			PLAYER_SHOOT				=> player_shoot,
			
			SPRITE 						=> sprite_to_render,
			HITBOX						=> hitbox_to_render,
			ALIEN_BORDER_REACHED		=> alien_border_reached,
			RAND_ALIEN_BORDER_REACHED => rand_alien_border_reached,
			PLAYER_BORDER_REACHED 	=> player_border_reached,
			COLUMN_CANNOT_SHOOT		=> column_cannot_shoot,
			COLLISION 					=> collision
		);	
	
		datapath_control_unit : entity work.HI_Datapath_Control_Unit
		port map
		(
			CLOCK => clock_50MHz,
			RESET_N => RESET_N, 
			TIME_1US => time_1us,
			ALIEN_BORDER_REACHED => alien_border_reached,
			RAND_ALIEN_BORDER_REACHED => rand_alien_border_reached,
			PLAYER_BORDER_REACHED => player_border_reached,
			RAND_OUTPUT	=> rand_output,
			COLUMN_CANNOT_SHOOT => column_cannot_shoot,
			DESTROY => destroy,
			HIDE => hide,
			
			ALIEN_GRID_MOVEMENT => alien_grid_movement,
			RAND_ALIEN_MOVEMENT => random_alien_movement,
			SHOW_RAND_ALIEN		=> show_rand_alien,
			PLAYER_MOVEMENT => player_movement,
			PLAYER_SHOOT => player_shoot,
			ALIEN_SHOOT => alien_shoot,
			COLUMN_TO_SHOOT => column_index,
			ADVANCE_PLAYER_BULLET => advance_player_bullet,
			ADVANCE_ALIEN_BULLETS => advance_alien_bullets,
			COLLISION => collision,
			
			BUTTON_LEFT => move_left,
			BUTTON_RIGHT => move_right,
			BUTTON_SHOOT => shoot
		);
		
		ps2_keyboard : entity work.ps2_keyboard
		port map
		(
			clk   			=> clock_50MHz,  
			ps2_clk      	=> PS2_CLK,     
			ps2_data     	=> PS2_DAT,     
			ps2_code_new 	=> ps2_code_new,
			ps2_code			=> ps2_code
		);
		
		ps2_keyboard_handler : entity work.ps2_keyboard_handler
		port map
		(
			CLOCK				=> clock_50MHz,
			RESET_N			=> RESET_N,
			PS2_CODE_NEW  	=> ps2_code_new,
			PS2_CODE 		=> ps2_code,
			
			MOVE_LEFT		=> keyboard_move_left,
			MOVE_RIGHT		=> keyboard_move_right,
			SHOOT				=> keyboard_shoot,
			START				=> keyboard_start
		);
		
		rand_gen : entity work.rand_gen
		generic map
		(
			RAND_GEN_W		=> RAND_ALIEN_GENERATION_TIME_BITS
		)
		port map
		(
			CLOCK				=> time_1us,
			RESET_N			=> RESET_N,
			RAND_OUTPUT		=> rand_output
		);
				
		led_keyboard : process(clock_50MHz, RESET_N) is
		begin
			if (RESET_N = '0') then
				LEDG(7) <= '0';
				LEDG(5) <= '0';
				LEDG(3) <= '0';
				LEDG(1) <= '0';
			elsif (rising_edge(clock_50MHz)) then
				LEDG(7) <= keyboard_move_left;
				LEDG(5) <= keyboard_move_right;
				LEDG(3) <= keyboard_shoot;
				LEDG(1) <= keyboard_start;
			end if;
		end process;
		
		move_left <= keyboard_move_left or not(KEY(3));
		move_right <= keyboard_move_right or not(KEY(2));
		shoot <= keyboard_shoot or not(KEY(1));
		start <= keyboard_start or not(KEY(0));

--		led_ps2_code : process(clock_50MHz, RESET_N) is
--			variable selectLed : std_logic := '0';
--			variable codenew : std_logic := '0';
--		begin
--			if (RESET_N = '0') then
--				selectLed := '0';
--				codenew := '0';
--				
--				LEDG(0) <= '0';
--				LEDG(1) <= '0';
--				LEDG(2) <= '0';
--				LEDG(3) <= '0';
--				LEDG(4) <= '0';
--				LEDG(5) <= '0';
--				LEDG(6) <= '0';
--				LEDG(7) <= '0';
--				
--				LEDR(0) <= '0';
--				LEDR(1) <= '0';
--				LEDR(2) <= '0';
--				LEDR(3) <= '0';
--				LEDR(4) <= '0';
--				LEDR(5) <= '0';
--				LEDR(6) <= '0';
--				LEDR(7) <= '0';
--			elsif (rising_edge (clock_50MHz)) then
--				if (ps2_CODE_NEW = '1' and ps2_code_new /= codenew) then
--					if (selectLed = '1') then
--						LEDG <= PS2_code;
--					else 
--						LEDR(0) <= PS2_CODE(0);
--						LEDR(1) <= PS2_CODE(1);
--						LEDR(2) <= PS2_CODE(2);
--						LEDR(3) <= PS2_CODE(3);
--						LEDR(4) <= PS2_CODE(4);
--						LEDR(5) <= PS2_CODE(5);
--						LEDR(6) <= PS2_CODE(6);
--						LEDR(7) <= PS2_CODE(7);
--					end if;
--					
--					selectLed := not selectLed;
--				end if;
--				codenew := PS2_code_new;
--			end if;
--		end process;
		
end architecture;