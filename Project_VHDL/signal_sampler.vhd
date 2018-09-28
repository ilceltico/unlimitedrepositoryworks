library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;

entity signal_sampler is
	port (
		CLOCK 					: in std_logic;
		RESET_N					: in std_logic;
		
		EXPLOSION_IN			: in entity_type_type;
		PLAYER_SHOT_IN			: in std_logic;
		ALIEN_MOVEMENT_IN		: in direction_type;
		--RAND_ALIEN_IN			: in std_logic;
		--STOP_RAND_ALIEN_IN	: in direction_type;
		
		EXPLOSION_OUT			: out std_logic;
		PLAYER_SHOT_OUT		: out std_logic;
		ALIEN_MOVEMENT_OUT	: out std_logic
		--RAND_ALIEN_OUT			: out std_logic;
		--STOP_RAND_ALIEN_OUT	: out std_logic
	);
end signal_sampler;

architecture RTL of signal_sampler is
	signal explosion_counter        			: integer range 0 to 4     := 0;
	signal player_shot_counter       		: integer range 0 to 4     := 0;
	signal movement_counter        			: integer range 0 to 4     := 0;
	signal start_rand_alien_counter       	: integer range 0 to 4     := 0;
	signal stop_rand_alien_counter        	: integer range 0 to 4     := 0;
begin

	explosion_sampling : process (CLOCK, RESET_N)
	begin
		if (RESET_N = '0')  then
			EXPLOSION_OUT <= '0';
		elsif rising_edge(CLOCK) then
			EXPLOSION_OUT <= '0';
			if (EXPLOSION_IN = ENTITY_ALIEN) then
				 EXPLOSION_OUT  <= '1';
				 explosion_counter <= 1;
			else
				if (explosion_counter > 0) then
					explosion_counter <= explosion_counter + 1;
					EXPLOSION_OUT <= '1';

					if (explosion_counter = 4) then
						explosion_counter <= 0;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	player_shot_sampling : process (CLOCK, RESET_N)
	begin
		if (RESET_N = '0')  then
			PLAYER_SHOT_OUT <= '0';
		elsif rising_edge(CLOCK) then
			PLAYER_SHOT_OUT <= '0';
			if (PLAYER_SHOT_IN = '1') then
				 PLAYER_SHOT_OUT  <= '1';
				 player_shot_counter <= 1;
			else
				if (player_shot_counter > 0) then
					player_shot_counter <= player_shot_counter + 1;
					PLAYER_SHOT_OUT <= '1';

					if (player_shot_counter = 4) then
						player_shot_counter <= 0;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	alien_movement_sampler : process (CLOCK, RESET_N)
	begin
		if (RESET_N = '0')  then
			ALIEN_MOVEMENT_OUT <= '0';
		elsif rising_edge(CLOCK) then
			ALIEN_MOVEMENT_OUT <= '0';
			if (ALIEN_MOVEMENT_IN /= DIR_NONE) then
				 ALIEN_MOVEMENT_OUT  <= '1';
				 movement_counter <= 1;
			else
				if (movement_counter > 0) then
					movement_counter <= movement_counter + 1;
					ALIEN_MOVEMENT_OUT <= '1';

					if (movement_counter = 4) then
						movement_counter <= 0;
					end if;
				end if;
			end if;
		end if;
	end process;
	
--	random_alien_sampler : process (CLOCK, RESET_N)
--	begin
--		if (RESET_N = '0')  then
--			RAND_ALIEN_OUT <= '0';
--		elsif rising_edge(CLOCK) then
--			RAND_ALIEN_OUT <= '0';
--			if (RAND_ALIEN_IN = '1') then
--				 RAND_ALIEN_OUT  <= '1';
--				 start_rand_alien_counter <= 1;
--			else
--				if (start_rand_alien_counter > 0) then
--					start_rand_alien_counter <= start_rand_alien_counter + 1;
--					RAND_ALIEN_OUT <= '1';
--
--					if (start_rand_alien_counter = 4) then
--						start_rand_alien_counter <= 0;
--					end if;
--				end if;
--			end if;
--		end if;
--	end process;
	
--	stop_random_alien_sampler : process (CLOCK, RESET_N)
--	begin
--		if (RESET_N = '0')  then
--			STOP_RAND_ALIEN_OUT <= '0';
--		elsif rising_edge(CLOCK) then
--			STOP_RAND_ALIEN_OUT <= '0';
--			if (STOP_RAND_ALIEN_IN = DIR_RIGHT or STOP_RAND_ALIEN_IN = DIR_LEFT) then
--				 STOP_RAND_ALIEN_OUT  <= '1';
--				 stop_rand_alien_counter <= 1;
--			else
--				if (stop_rand_alien_counter > 0) then
--					stop_rand_alien_counter <= stop_rand_alien_counter + 1;
--					STOP_RAND_ALIEN_OUT <= '1';
--
--					if (stop_rand_alien_counter = 4) then
--						stop_rand_alien_counter <= 0;
--					end if;
--				end if;
--			end if;
--		end if;
--	end process;
end architecture;
	