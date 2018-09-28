library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;

entity music_box is
	port (
		CLOCK 					: in std_logic;
		
		SOUND_SELECT			: in std_logic_vector(2 downto 0);
		AUDIO_READY				: out std_logic;
		AUDIO_OUT				: out std_logic_vector(31 downto 0)
	);
end music_box;

architecture RTL of music_box is
	signal explosion				: std_logic := '0';
	signal shot						: std_logic := '0';
	signal movement				: std_logic := '0';
	signal rand_alien				: std_logic := '0';
begin
		
	sound_handler : process (CLOCK)
	begin
		if rising_edge(CLOCK) then
			case SOUND_SELECT is
			when "000" =>			-- Explosion shot
				explosion <= '1';
			when "001" =>			-- Player shot	
				shot <= '1';
			when "010" =>			-- Alien movement
				movement <= '1';
			when "011" =>			-- Start sound random alien
				rand_alien <= '1';
			when "100" =>			-- Stop sound random alien
				rand_alien <= '0';
			when others =>
				explosion <= '0';
				shot <= '0';
				movement <= '0';
				rand_alien <= '0';
--				
      end case;
    end if;
	end process;
	
	play_sound : process (CLOCK)
		variable explosion_signal				: natural 		:= 5000; 
		variable play_explosion_sound 		: boolean 		:= false;
		variable expl_sound_time_counter 	: natural 		:= 0;
		variable count 							: natural 		:= 0; 
		
		variable shot_signal						: natural 		:= 5000; 
		variable play_shot_sound 				: boolean 		:= false;
		variable shot_sound_time_counter 	: natural 		:= 0; 
		variable count_shot 						: natural 		:= 0; 
		
		variable play_movement_sound 			: boolean 		:= false;
		variable movement_signal				: natural 		:= 5000;  
		variable mov_sound_time_counter 		: natural 		:= 0; 
		variable count_movement					: natural 		:= 0; 
		variable current_sound					: natural 		:= 0; 
		
		variable play_rand_alien_sound 		: boolean 		:= false;
		variable rand_alien_signal				: natural 		:= 5000;  
		variable randal_sound_time_counter 	: natural 		:= 0; 
		variable count_rand_alien				: natural 		:= 0; 
		variable wait_time						: natural 		:= 0;
		
		variable dec_hz_count 					: natural 		:= 0; 
		variable hz_count 						: natural 		:= 0;
		variable wave_hz_count 					: natural 		:= 0; 	
		variable frequency_880hz 				: natural 		:= 6818; -- based on 12MHz clock
		variable frequency_440hz 				: natural 		:= 13636; -- based on 12MHz clock
		variable frequency_155hz 				: natural 		:= 38709;
		variable sound_variation 				: natural 		:= 0;
		variable frequency_1hz					: natural		:= 31;
	begin
		if rising_edge(CLOCK) then
			if (explosion = '1') then
					play_explosion_sound := true;
			end if;
			
			if (shot = '1') then
					play_shot_sound := true;
			end if;
			
			if (movement = '1') then
					play_movement_sound := true;
			end if;
			
			if (rand_alien = '1') then
					if (wait_time /= 5000000) then
						wait_time := wait_time + 1;
					end if;
					play_rand_alien_sound := true;
			else 
					if (wait_time = 5000000) then
						play_rand_alien_sound := false;
						wait_time := 0;
					end if;
			end if;
			
			if (play_explosion_sound) then
			
					AUDIO_READY <= '1';
					if (count = frequency_880hz + dec_hz_count) then
						count := 0;
						explosion_signal := -explosion_signal ;
					end if;
					AUDIO_OUT(15 downto 0) <= std_logic_vector(to_unsigned(explosion_signal, 16));
					
					expl_sound_time_counter := expl_sound_time_counter + 1;				
					count := count + 1;

					if (expl_sound_time_counter = BASE_SOUND_TIME ) then
						expl_sound_time_counter := 0;
						play_explosion_sound := false;
						dec_hz_count := 0;
						count := 0;
						AUDIO_READY <= '0';
					end if;
					
					if (expl_sound_time_counter mod 50000 = 0 ) then
						dec_hz_count := dec_hz_count + frequency_1hz;
					end if;
					
			end if;
			
			if (play_shot_sound) then
					AUDIO_READY <= '1';
					if (count_shot = frequency_440hz + hz_count) then
						count_shot := 0;
						shot_signal := -shot_signal ;
					end if;
					AUDIO_OUT(15 downto 0) <= std_logic_vector(to_unsigned(shot_signal, 16));
					
					shot_sound_time_counter := shot_sound_time_counter + 1;				
					count_shot := count_shot + 1;

					if (shot_sound_time_counter = BASE_SOUND_TIME ) then
						shot_sound_time_counter := 0;
						play_shot_sound := false;
						hz_count := 0;
						count_shot := 0;
						AUDIO_READY <= '0';
					end if;
					
					if (shot_sound_time_counter mod 2000 = 0 ) then
						hz_count := hz_count + frequency_1hz;
					end if;
			end if;
			
			if (play_movement_sound) then
					AUDIO_READY <= '1';
					if (count_movement = frequency_155hz + sound_variation ) then
						count_movement := 0;
						movement_signal := -movement_signal ;
					end if;
					AUDIO_OUT(15 downto 0) <= std_logic_vector(to_unsigned(movement_signal, 16));
					
					mov_sound_time_counter := mov_sound_time_counter + 1;				
					count_movement := count_movement + 1;

					if (mov_sound_time_counter = 5000000 ) then
						mov_sound_time_counter := 0;
						play_movement_sound := false;
						count_movement := 0;
						AUDIO_READY <= '0';
						
						sound_variation := sound_variation + 2386;
						current_sound := current_sound + 1;
						if (current_sound = 4) then
							sound_variation := 2386;
							current_sound := 0;
						end if;
					end if;
					
			end if;

			if (play_rand_alien_sound) then
					AUDIO_READY <= '1';
					if (count_rand_alien = frequency_440hz - wave_hz_count) then
						count_rand_alien := 0;
						rand_alien_signal := -rand_alien_signal ;
					end if;
					AUDIO_OUT(31 downto 16) <= std_logic_vector(to_unsigned(rand_alien_signal, 16));
					
					randal_sound_time_counter := randal_sound_time_counter + 1;				
					count_rand_alien := count_rand_alien + 1;

					if (randal_sound_time_counter = BASE_SOUND_TIME ) then
						randal_sound_time_counter := 0;
						--play_rand_alien_sound := false;
						wave_hz_count := 0;
						count_rand_alien := 0;
						AUDIO_READY <= '0';
					end if;
					
					if (randal_sound_time_counter mod 1000 = 0 ) then
						wave_hz_count := wave_hz_count + frequency_1hz;
					end if;
			end if;
			
--			if (play_rand_alien_sound) then
--					AUDIO_READY <= '1';
--					if (randal_sound_time_counter mod 500 = 0 ) then
--						wave_hz_count := wave_hz_count + sound_variation;
--						if (wave_hz_count = 3000 ) then	
--							sound_variation := -sound_variation;
--						end if;
--						if (wave_hz_count = 0 ) then	
--							sound_variation := -sound_variation;
--						end if;
--					end if;
--
--					if (count_rand_alien = frequency_440hz + wave_hz_count) then
--						count_rand_alien := 0;
--						rand_alien_signal := -rand_alien_signal ;
--					end if;
--					AUDIO_OUT(15 downto 0) <= std_logic_vector(to_unsigned(rand_alien_signal, 16));
--					
--					randal_sound_time_counter := randal_sound_time_counter + 1;				
--					count_rand_alien := count_rand_alien + 1;
--
--					if (randal_sound_time_counter = 5000000 ) then
--						wave_hz_count := 0;
--						sound_variation := 1;
--						randal_sound_time_counter := 0;
--						play_rand_alien_sound := false;
--						count_rand_alien := 0;
--						AUDIO_READY <= '0';
--					end if;
--					
--			end if;
			
		end if;
	
	end process;
	
end architecture;
	