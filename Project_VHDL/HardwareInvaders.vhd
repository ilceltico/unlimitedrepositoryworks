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
		LEDG					  : out 	 std_logic_vector(7 downto 0)
	);
end entity;

architecture RTL of HardwareInvaders is
	signal clock_50MHz        : std_logic;
	signal clock_debug		  : std_logic;
	signal clock_100MHz       : std_logic;
	signal RESET_N            : std_logic;
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
	signal game_tick			  : std_logic;
	signal fb_vsync			  : std_logic;
	signal req_next_sprite 	  : std_logic;

begin

	LEDG(7) <= show;

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

	frame_time_gen : process(clock_50MHz, RESET_N)
		variable counter : integer range 0 to (833333 - 1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			frame_time <= '0';
		elsif (rising_edge(clock_50MHz)) then
			if(counter = counter'high) then
				counter := 0;
				frame_time <= '1';
			else
				counter := counter+1;
				frame_time <= '0';			
			end if;
		end if;
	end process;
	
	game_tick_gen : process(clock_50MHz, RESET_N)
		variable counter : integer range 0 to (50000000 - 1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			game_tick <= '0';
		elsif (rising_edge(clock_50MHz)) then
			if(counter = counter'high) then
				counter := 0;
				game_tick <= '1';
			else
				counter := counter+1;
				game_tick <= '0';			
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
			DRAW_RECT => '0',
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
			REQ_NEXT_SPRITE => req_next_sprite
		);
		
	view : entity work.HI_View
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
			CLOCK				=> clock_50MHz,
			RESET_N			=> RESET_N,
			REQ_NEXT_SPRITE => req_next_sprite,
			CHANGE_ALIEN_SPRITES		=> game_tick,
			
			SPRITE 				=> sprite_to_render,
			HITBOX				=> hitbox_to_render
		);		
end architecture;