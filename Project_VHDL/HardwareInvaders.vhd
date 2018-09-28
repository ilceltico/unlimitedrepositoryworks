library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_package.all;
use work.hi_package.all;

entity HardwareInvaders is
	port (
		CLOCK_50            : in  		std_logic;
		KEY                 : in  		std_logic_vector(3 downto 0);
		SW                  : in  		std_logic_vector(9 downto 0);
		
		VGA_R               : out 		std_logic_vector(3 downto 0);
		VGA_G               : out 		std_logic_vector(3 downto 0);
		VGA_B               : out 		std_logic_vector(3 downto 0);
		VGA_HS              : out 		std_logic;
		VGA_VS              : out	 	std_logic;
		
		SRAM_ADDR           : out  	std_logic_vector(17 downto 0);
		SRAM_DQ             : inout	std_logic_vector(15 downto 0);
		SRAM_CE_N           : out   	std_logic;
		SRAM_OE_N           : out   	std_logic;
		SRAM_WE_N           : out   	std_logic;
		SRAM_UB_N           : out   	std_logic;
		SRAM_LB_N           : out   	std_logic;
		
		LEDR					  : out 	 	std_logic_vector(9 downto 0);
		LEDG					  : out 	 	std_logic_vector(7 downto 0);
		PS2_CLK				  : in 		std_logic;
		PS2_DAT				  : in 		std_logic;
		
		-- 7 segment display
		HEX0					  : out std_logic_vector(6 downto 0);
		HEX1					  : out std_logic_vector(6 downto 0);
		HEX2					  : out std_logic_vector(6 downto 0);
		HEX3					  : out std_logic_vector(6 downto 0);
		
		-- WM8731 audio interface
		AUD_BCLK				  : out std_logic;
		AUD_XCK				  : out std_logic;
		AUD_ADCLRCK			  :  out std_logic;
		AUD_ADCDAT			  : in std_logic;
		AUD_DACLRCK			  : out std_logic;
		AUD_DACDAT			  : out std_logic;
		
		-- i2c
		I2C_SCLK				  : out std_logic;
		I2C_SDAT				  : inout std_logic
		
	);
end entity;

architecture RTL of HardwareInvaders is

	-- VGA_Framebuffer outputs
	signal fb_vsync			  					: std_logic;
	signal fb_ready           					: std_logic;

	-- HI_View_Control_Unit outputs
	signal draw_sprite		  					: std_logic;
	signal show					  					: std_logic;
	signal request_entity_sprite				: datapath_entity_index_type;
	
	-- HI_View outputs
	signal fb_flip            					: std_logic;
	signal fb_draw_rect       					: std_logic;
	signal fb_draw_line       					: std_logic;
	signal fb_fill_rect       					: std_logic;
	signal fb_clear           					: std_logic;
	signal fb_color          	 				: color_type;
	signal fb_x0              					: xy_coord_type;
	signal fb_y0             	 				: xy_coord_type;
	signal fb_x1             	 				: xy_coord_type;
	signal fb_y1             	 				: xy_coord_type;
	signal sr_ready			  					: std_logic;
	
	-- HI_Datapath outputs
	signal sprite_to_render		  				: sprite_type;
	signal hitbox_to_render	  					: hitbox_type;
	signal alien_border_reached				: direction_type;
	signal rand_alien_border_reached			: direction_type;
	signal rand_alien_visible					: std_logic;
	signal player_border_reached 				: direction_type;
	signal column_cannot_shoot 				: std_logic;
	signal no_bullets_to_shoot					: std_logic;
	signal collision 								: collision_type;
	signal score									: integer;
	signal lives									: integer range 0 to PLAYER_LIVES;
	signal alive_alien_count					: integer range 0 to ALIENS_PER_COLUMN * COLUMNS_PER_GRID;
	signal player_has_shot						: std_logic;
	
	-- HI_Datapath_Control_Unit outputs
	signal alien_grid_movement 				: direction_type;
	signal column_index 							: alien_grid_index_type;
	signal alien_shoot							: std_logic;
	signal random_alien_movement 				: direction_type;
	signal show_rand_alien 						: std_logic;
	signal player_movement						: direction_type;
	signal player_shoot							: std_logic;
	signal advance_player_bullet 				: std_logic;
	signal advance_alien_bullets 				: std_logic;
	signal destroy									: datapath_entity_index_type;
	signal destroy_silent_explosion			: std_logic;
	signal hide 									: datapath_entity_index_type;
	signal change_player_explosion_sprite 	: std_logic;
	
	-- ps2_keyboard outputs
	signal ps2_code_new 							: std_logic;
	signal ps2_code								: std_logic_vector(7 downto 0);
	
	-- ps2_keyboard_handler outputs
	signal keyboard_move_left					: std_logic;
	signal keyboard_move_right					: std_logic;
	signal keyboard_shoot 						: std_logic;
	signal keyboard_start 						: std_logic;
	
	-- rand_gen ouptuts
	signal rand_output							: std_logic_vector(RAND_ALIEN_GENERATION_TIME_BITS-1 downto 0);
	
	-- Clocks
	signal clock_12MHz        					: std_logic;
	signal clock_50MHz        					: std_logic;
	signal clock_debug		  					: std_logic;
	signal clock_100MHz       					: std_logic;
	signal time_1us			  					: std_logic;
	signal frame_time			 					: std_logic;
	
	-- Resets
	signal RESET_N            					: std_logic;
	signal reset_sync_reg     					: std_logic;
	
	-- ??? wat_lady.jpg
--	signal sprite_x           					: xy_coord_type;
--	signal sprite_y           					: xy_coord_type;
--	signal shield									: shield_type;
	
	-- Keyboard inputs
	signal move_left								: std_logic;
	signal move_right 							: std_logic;
	signal shoot									: std_logic;
	signal start									: std_logic;
	
	-- Options
	signal geek_binary_leds						: std_logic;
	
	-- Binary to bcd
	signal binary_to_bcd_start 				: std_logic;
	signal bcd_value_temp						: std_logic_vector(DECIMAL_DIGITS_7SEGMENT*4 - 1 downto 0);
	signal bcd_value								: std_logic_vector(DECIMAL_DIGITS_7SEGMENT*4 - 1 downto 0);
	signal b2b_data_available					: std_logic;
	
	-- Controller outputs
	signal gameover 								: std_logic;
	signal new_level								: std_logic;
	signal level									: integer;
	signal youwin									: std_logic;
	signal show_next_level						: std_logic;
	signal show_intro								: std_logic;
	signal restart_game							: std_logic;
	
	-- audio signals
	signal aud_mono								: std_logic_vector(31 downto 0):=(others=>'0');
	signal WM_i2c_busy							: std_logic;
	signal WM_i2c_done							: std_logic;
	signal WM_i2c_send_flag						: std_logic;
	signal WM_i2c_data							: std_logic_vector(15 downto 0);
	signal DA_CLR									: std_logic:='0';
	
	signal sound_number							: std_logic_vector(2 downto 0);
	signal aud_ready								: std_logic;
	signal aud_out									: std_logic_vector(31 downto 0);
	
	-- signal sampling 50mhz -> 12mhz
	signal player_shot_out						: std_logic;
	signal alien_shot_out						: std_logic;
	signal alien_mov_out							: std_logic;
	signal rand_alien_mov_out					: std_logic;
	signal stop_rand_alien_mov_out			: std_logic;

	
begin

	pll : entity work.PLL
		port map (
			inclk0  => CLOCK_50,
			c0      => clock_100MHz,
			c1      => clock_50MHz,
			c2 	  => clock_12MHz      
		); 
	
					
	reset_sync : process(CLOCK_50)
	begin
		
		if (rising_edge(CLOCK_50)) then
			
			reset_sync_reg <= SW(9);
			RESET_N 			<= reset_sync_reg;
		
		end if;
	
	end process;

	reference_time_gen : process(clock_50Mhz, RESET_N)
		
		variable counter : integer range 0 to (REFERENCE_TIME_50MHz - 1);
	
	begin
		
		if (RESET_N = '0') then
		
			counter 	:= 0;
			time_1us <= '0';
		
		elsif (rising_edge(clock_50MHz)) then
		
			if(counter = counter'high) then
				
				counter := 0;
				time_1us <= '1';
		
			else
			
				counter := counter + 1;
				time_1us <= '0';			
			
			end if;
		end if;
		
	end process;

	frame_time_gen : process(clock_50MHz, RESET_N)
		
		variable counter : integer range 0 to (FRAME_TIME_1us - 1);
	
	begin
	
		if (RESET_N = '0') then
		
			counter 		:= 0;
			frame_time 	<= '0';
		
		elsif (rising_edge(clock_50MHz)) then
		
			frame_time 	<= '0';
			
			if (time_1us = '1') then
			
				if(counter = counter'high) then
				
					counter 		:= 0;
					frame_time 	<= '1';
			
				else
				
					counter 		:= counter+1;
					frame_time 	<= '0';			
			
				end if;
			end if;
		end if;
		
	end process;
	
	VGA_VS <= fb_vsync;
	
	vga : entity work.VGA_Framebuffer
		generic map (
			SCREEN_WIDTH        => REAL_WIDTH,
			SCREEN_HEIGHT       => REAL_HEIGHT
		)
		port map (
			CLOCK     => clock_100MHz,
			RESET_N   => RESET_N,
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
				
			READY     => fb_ready,
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
		
	controller : entity work.HI_Controller
		port map 
		(
			CLOCK					=> clock_50MHz,
			RESET_N				=> RESET_N,
			LIVES					=> lives,
			ALIEN_COUNT			=> alive_alien_count,
			BUTTON_START		=> start,
		
			LEVEL 				=> level,
			NEW_LEVEL			=> new_level,
			GAMEOVER				=> gameover,
			YOUWIN				=> youwin,
			SHOW_NEXT_LEVEL 	=> show_next_level,
			SHOW_INTRO			=> show_intro,
			RESTART_GAME 		=> restart_game
		);
		

	view_control_unit : entity work.HI_View_Control_Unit
		port map 
		(
			CLOCK							=> clock_50MHz,
			FRAME_TIME 					=> frame_time,
			RESET_N						=> RESET_N,
			READY 						=> sr_ready,
			GAMEOVER						=> gameover,
			NEW_LEVEL					=> show_next_level,
			YOUWIN						=> youwin,
			INTRO							=> show_intro,
			
			DRAW_SPRITE					=> draw_sprite,
			SHOW							=> show,
			REQUEST_ENTITY_SPRITE 	=> request_entity_sprite
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
			CLOCK										=> clock_50MHz,
			RESET_N									=> RESET_N and not(restart_game),
			REQUEST_ENTITY_SPRITE				=> request_entity_sprite,
			PLAYER_MOVEMENT						=> player_movement,
			RAND_ALIEN_MOVEMENT					=> random_alien_movement,
			SHOW_RAND_ALIEN						=> show_rand_alien,
			ALIEN_GRID_MOVEMENT					=> alien_grid_movement,
			COLUMN_INDEX							=> column_index,
			DESTROY 									=> destroy,
			DESTROY_SILENT_EXPLOSION 			=> destroy_silent_explosion,
			HIDE										=> hide,
			ADVANCE_PLAYER_BULLET				=> advance_player_bullet,
			ADVANCE_ALIEN_BULLETS				=> advance_alien_bullets,
			ALIEN_SHOOT								=> alien_shoot,
			PLAYER_SHOOT							=> player_shoot,
			CHANGE_PLAYER_EXPLOSION_SPRITE 	=> change_player_explosion_sprite,
			NEW_LEVEL								=> new_level,
			LEVEL										=> level,
			
			SPRITE 									=> sprite_to_render,
			HITBOX									=> hitbox_to_render,
			ALIEN_BORDER_REACHED					=> alien_border_reached,
			RAND_ALIEN_BORDER_REACHED 			=> rand_alien_border_reached,
			RAND_ALIEN_VISIBLE					=> rand_alien_visible,
			PLAYER_BORDER_REACHED 				=> player_border_reached,
			COLUMN_CANNOT_SHOOT					=> column_cannot_shoot,
			NO_BULLETS_TO_SHOOT					=> no_bullets_to_shoot,
			COLLISION 								=> collision,
			SCORE										=> score,
			LIVES										=> lives,
			ALIVE_ALIEN_COUNT						=> alive_alien_count,
			PLAYER_HAS_SHOT 						=> player_has_shot
		);	
	
		datapath_control_unit : entity work.HI_Datapath_Control_Unit
		port map
		(
			CLOCK 									=> clock_50MHz,
			RESET_N 									=> RESET_N and not(new_level) and not(restart_game), 
			TIME_1US 								=> time_1us,
			ALIEN_BORDER_REACHED 				=> alien_border_reached,
			RAND_ALIEN_BORDER_REACHED 			=> rand_alien_border_reached,
			RAND_ALIEN_VISIBLE 					=> rand_alien_visible,
			PLAYER_BORDER_REACHED 				=> player_border_reached,
			LIVES										=> lives,
			RAND_GEN									=> rand_output,
			COLUMN_CANNOT_SHOOT 					=> column_cannot_shoot,
			NO_BULLETS_TO_SHOOT					=> no_bullets_to_shoot,
			COLLISION 								=> collision,
			BUTTON_LEFT 							=> move_left,
			BUTTON_RIGHT 							=> move_right,
			BUTTON_SHOOT 							=> shoot,
			
			ALIEN_GRID_MOVEMENT 					=> alien_grid_movement,
			COLUMN_TO_SHOOT 						=> column_index,
			ALIEN_SHOOT 							=> alien_shoot,
			RAND_ALIEN_MOVEMENT 					=> random_alien_movement,
			SHOW_RAND_ALIEN						=> show_rand_alien,
			PLAYER_MOVEMENT 						=> player_movement,
			PLAYER_SHOOT 							=> player_shoot,
			ADVANCE_PLAYER_BULLET 				=> advance_player_bullet,
			ADVANCE_ALIEN_BULLETS 				=> advance_alien_bullets,
			DESTROY 									=> destroy,
			DESTROY_SILENT_EXPLOSION 			=> destroy_silent_explosion,
			HIDE 										=> hide,
			CHANGE_PLAYER_EXPLOSION_SPRITE 	=> change_player_explosion_sprite
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
				
--		led_keyboard : process(clock_50MHz, RESET_N) is
--		begin
--		
--			if (RESET_N = '0') then
--		
--				LEDG(7) <= '0';
--				LEDG(5) <= '0';
--				LEDG(3) <= '0';
--				LEDG(1) <= '0';
--			
--			elsif (rising_edge(clock_50MHz)) then
--			
--				LEDG(7) <= keyboard_move_left;
--				LEDG(5) <= keyboard_move_right;
--				LEDG(3) <= keyboard_shoot;
--				LEDG(1) <= keyboard_start;
--			
--			end if;
--		
--		end process;

		move_left 	<= (keyboard_move_left or not(KEY(3))) and not(gameover) and not(youwin) and not (show_intro);
		move_right 	<= (keyboard_move_right or not(KEY(2))) and not(gameover) and not(youwin) and not (show_intro);
		shoot 		<= (keyboard_shoot or not(KEY(1))) and not(gameover) and not(youwin) and not (show_intro);
		start 		<= (keyboard_start or not(KEY(0)));
	
		geek_binary_leds <= SW(1);

--		led_levels : process(clock_50MHz, RESET_N) is 
--		begin
--			
--			if (RESET_N = '0' or show_intro = '1') then
--		
--				LEDG <= (others => '0');
--			
--			elsif (rising_edge(clock_50MHz)) then
--			
--				if (geek_binary_leds = '1') then 
--					LEDG <= std_logic_vector(to_unsigned(level, 8));
--				else 
--					case (level) is
--						when 0 => LEDG <= "00000000";
--						when 1 => LEDG <= "00000001";
--						when 2 => LEDG <= "00000011";
--						when 3 => LEDG <= "00000111";
--						when 4 => LEDG <= "00001111";
--						when 5 => LEDG <= "00011111";
--						when 6 => LEDG <= "00111111";
--						when 7 => LEDG <= "01111111";
--						when 8 => LEDG <= "11111111";
--						when others => LEDG <= "11111111";
--					end case;
--				end if;
--			
--			end if;
--		
--		end process;

		Binary_to_BCD : entity work.Binary_to_BCD
		generic map (
			g_INPUT_WIDTH 		=> BINARY_INPUT_WIDTH,
			g_DECIMAL_DIGITS 	=>	DECIMAL_DIGITS_7SEGMENT
		)
		port map
		(
			CLOCK					=> clock_50MHz,
			START					=> binary_to_bcd_start,
			BINARY				=> std_logic_vector(to_unsigned(score, 15)),
			
			o_BCD					=> bcd_value_temp,
			o_DV					=> b2b_data_available
		);
		
		bcd_value_filter : process(clock_50MHz, RESET_N)
		begin
		
			if (RESET_N = '0') then
			
				bcd_value 				<= (others => '0');
				binary_to_bcd_start 	<= '0';
			
			elsif (rising_edge(clock_50MHz)) then 
			
				binary_to_bcd_start 	<= '1';
			
				if (b2b_data_available = '1') then
					bcd_value <= bcd_value_temp;
				end if;
			end if;
			
		end process;
		
		bcd_to_7segment_0 : entity work.bcd_to_7segment
		port map 
		(
			CLOCK				=> clock_50MHz,
			RESET_N			=> RESET_N,
			BCD_NUMBER		=> bcd_value(3 downto 0),
			
			DISPLAY			=> HEX0( 6 downto 0)
		);
		
		bcd_to_7segment_1 : entity work.bcd_to_7segment
		port map 
		(
			CLOCK				=> clock_50MHz,
			RESET_N			=> RESET_N,
			BCD_NUMBER		=> bcd_value(7 downto 4),
			
			DISPLAY			=> HEX1( 6 downto 0)
		);
		
		bcd_to_7segment_2 : entity work.bcd_to_7segment
		port map 
		(
			CLOCK				=> clock_50MHz,
			RESET_N			=> RESET_N,
			BCD_NUMBER		=> bcd_value(11 downto 8),
			
			DISPLAY			=> HEX2( 6 downto 0)
		);
		
		bcd_to_7segment_3 : entity work.bcd_to_7segment
		port map 
		(
			CLOCK				=> clock_50MHz,
			RESET_N			=> RESET_N,
			BCD_NUMBER		=> bcd_value(15 downto 12),
			
			DISPLAY			=> HEX3(6 downto 0)
		);
		
--		led_lives : process(clock_50MHz, RESET_N) is 
--		
--		begin 
--		
--			if (RESET_N = '0' or show_intro = '1') then 
--				LEDR <= (others => '0');
--				
--			elsif (rising_edge(clock_50MHz)) then 
--				if (geek_binary_leds = '1') then
--					LEDR <= std_logic_vector(to_unsigned(lives, 10));
--				else
--					case (lives) is
--						when 0 => LEDR <= "0000000000";
--						when 1 => LEDR <= "0000000001";
--						when 2 => LEDR <= "0000000011";
--						when 3 => LEDR <= "0000000111";
----						when 4 => LEDR <= "0000001111";
----						when 5 => LEDR <= "0000011111";
----						when 6 => LEDR <= "0000111111";
----						when 7 => LEDR <= "0001111111";
----						when 8 => LEDR <= "0011111111";
----						when 9 => LEDR <= "0111111111";
----						when 10 => LEDR <= "1111111111";
--						when others => LEDR <= "1111111111";
--					end case;
--				end if;
--				
--			end if;
--			
--		end process;

		-- signal sampler
		signal_sampler : entity work.signal_sampler
		port map
		(
			CLOCK 					=> clock_50MHz,
 			RESET_N					=> RESET_N and not ( NEW_LEVEL or SHOW_NEXT_LEVEL or GAMEOVER or YOUWIN or SHOW_INTRO or RESTART_GAME),
			
			EXPLOSION_IN			=> DESTROY.entity_type,
			PLAYER_SHOT_IN			=> player_has_shot,
			ALIEN_MOVEMENT_IN		=> ALIEN_GRID_MOVEMENT,
			RAND_ALIEN_IN			=> '0', --SHOW_RAND_ALIEN,
			STOP_RAND_ALIEN_IN	=> '0', --RAND_ALIEN_BORDER_REACHED,
			
			EXPLOSION_OUT			=> alien_shot_out,
			PLAYER_SHOT_OUT		=> player_shot_out,
			ALIEN_MOVEMENT_OUT	=> alien_mov_out,
			RAND_ALIEN_OUT			=> rand_alien_mov_out,
			STOP_RAND_ALIEN_OUT  => stop_rand_alien_mov_out
		);
		
		-- Audio
		music_box : entity work.music_box
		port map
		(
			CLOCK 					=> clock_12MHz,
			
			SOUND_SELECT			=> sound_number,
			AUDIO_READY				=> aud_ready,
			AUDIO_OUT				=> aud_out
		);
			
		sound : entity work.aud_gen 
			port map(
				aud_clock_12	=>	clock_12MHz,
				aud_bk			=>	AUD_BCLK,
				aud_dalr			=>	DA_CLR,
				aud_dadat		=>	AUD_DACDAT,	
				aud_data_in		=>	aud_mono
			);

		WM8731: entity work.i2c 
			port map(
				i2c_busy			=>	WM_i2c_busy,
				i2c_scl			=>	I2C_SCLK,
				i2c_send_flag	=>	WM_i2c_send_flag,
				i2c_sda			=>	I2C_SDAT,
				i2c_addr			=>	"00110100",
				i2c_done			=>	WM_i2c_done,
				i2c_data			=>	WM_i2c_data,
				i2c_clock_50	=>	clock_50	
			);

			
		AUD_XCK			<=	clock_12MHz;
		AUD_DACLRCK		<=	DA_CLR;
		
		handle_audio : process (clock_12MHz)
			variable count : natural := 0;
		begin
			if rising_edge (clock_12MHz) then
				if ( SW(8) = '1' ) then		-------- mute
					aud_mono		<= (others=>'0');
				else
					
					if (alien_shot_out = '1') then
						sound_number <= "000";
					end if;
					if (player_shot_out = '1') then
						sound_number <= "001";
					end if;
					if (alien_mov_out = '1') then
						sound_number <= "010";
					end if;
					
--					if (rand_alien_mov_out = '1') then
--						sound_number <= "011";
--						LEDG(6)		<= '1';
--					end if;
--					
--					if (stop_rand_alien_mov_out = '1') then
--						sound_number <= "100";
--						LEDG(6)		<= '1';
--					end if;
					
					if (SW(2) = '1') then
						sound_number <= "001";
					end if;
					
					
					if (count = 100) then  
						count := 0;
						sound_number <= "111";
						LEDG(7)		<= '0';
						LEDR(9)		<= '0';
					end if;
					count := count + 1;
					
					aud_mono(15 downto 0)	<= aud_out(15 downto 0);
					aud_mono(31 downto 16)	<= aud_out(31 downto 16);
									
					--sound_number <= "111";
					LEDR(1)		<= aud_ready;
				end if;
			end if;
		end process;	

		handle_i2c : process (CLOCK_50)
		begin

			if rising_edge (CLOCK_50)then
				if(KEY="1111")then
				WM_i2c_send_flag<='0';
				end if;
			end if;
			 if rising_edge(CLOCK_50) and WM_i2c_busy='0' then
			 
				
					if (KEY(0)='0') then ----Digital Interface: DSP, 16 bit, slave mode
						WM_i2c_data(15 downto 9)<="0000111";
						WM_i2c_data(8 downto 0)<="000010011";	
						WM_i2c_send_flag<='1';
						
					elsif (KEY(0)='0'AND SW(0)='1' ) then --- HEADPHONE VOLUME
						WM_i2c_data(15 downto 9)<="0000111";
						WM_i2c_data(8 downto 0)<="000011111";
						WM_i2c_send_flag<='1';
					
					elsif (KEY(1)='0'AND SW(0)='0' ) then ---ADC of, DAC on, Linout ON, Power ON
						WM_i2c_data(15 downto 9)<="0000110";
						WM_i2c_data(8 downto 0)<="000000111";
						WM_i2c_send_flag<='1';
					elsif (KEY(1)='0'AND SW(0)='1' ) then --- USB mode
						WM_i2c_data(15 downto 9)<="0001000";
						WM_i2c_data(8 downto 0)<="000000001";
						WM_i2c_send_flag<='1';
					elsif (KEY(2)='0'AND SW(0)='0') then --- activ interface
						WM_i2c_data(15 downto 9)<="0001001";
						WM_i2c_data(8 downto 0)<="111111111";
						WM_i2c_send_flag<='1';
						LEDR(4)		<= '1';
					elsif (KEY(2)='0'AND SW(0)='1') then--- Enable DAC to LINOUT
						WM_i2c_data(15 downto 9)<="0000100";
						WM_i2c_data(8 downto 0)<="000010010";
						WM_i2c_send_flag<='1';
					elsif (KEY(3)='0' AND SW(0)='0') then ---remove mute DAC
						WM_i2c_data(15 downto 9)<="0000101";
						WM_i2c_data(8 downto 0)<="000000000";
						WM_i2c_send_flag<='1';
					elsif (KEY(3)='0' AND SW(0)='1') then---reset
						WM_i2c_data(15 downto 9)<="0001111";
						WM_i2c_data(8 downto 0)<="000000000";
						WM_i2c_send_flag<='1';
					end if;
					

			 end if;
		end process;

		
end architecture;