library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.hi_package.all;

entity HI_Controller is
	generic
	(
		MAX_LEVEL			: integer := 3
	);
	
	port 
	(
		CLOCK           	: in std_logic;
		RESET_N				: in std_logic;
		LIVES					: in integer range 0 to PLAYER_LIVES;
		ALIEN_COUNT		 	: in integer range 0 to ALIENS_PER_COLUMN * COLUMNS_PER_GRID;
		
		LEVEL 				: out integer range 1 to LEVEL_NUMBER;
		NEW_LEVEL			: out std_logic;
		GAMEOVER				: out std_logic;
		YOUWIN 				: out std_logic
		
	);
end entity;

architecture RTL of HI_Controller is
	type game_state_type is (IN_GAME_STATE, YOUWIN_STATE, NEWLEVEL_STATE, GAMEOVER_STATE);
	
	signal state		: game_state_type;
	signal level_no	: integer;

begin

	Controller_RTL : process (CLOCK, RESET_N)
	
		variable counter : integer := 0;
	
	begin
		
		if(RESET_N = '0') then
		
			level_no <= 1;
			state <= IN_GAME_STATE;
			GAMEOVER <= '0';
			YOUWIN <= '0';
			counter := 0;
			
		elsif rising_edge(CLOCK) then		
			
			GAMEOVER <= '0';
			YOUWIN	<= '0';
			NEW_LEVEL <= '0';
			
			case(state) is 
			when IN_GAME_STATE => 
				
				if (LIVES = 0) then 
					state <= GAMEOVER_STATE;
				end if;
				
				if (ALIEN_COUNT = 0) then
					state <= NEXTLEVEL_STATE;
				end if;
				
			when YOUWIN_STATE =>
				
				YOUWIN <= '1';
				counter := counter + 1;
				
				if (counter = 40000000) then 
					counter := 0;
					level_no <= level_no + 1;
					if (level_no <= LEVEL_NUMBER) then 
						state <= IN_GAME_STATE;
						NEW_LEVEL <= '1';
--					elsif (level_no = level_no + 2) then    check if you won even the third set -> lvl 4 -> you won the game
--						YOUWIN <= '1';
					end if;
				end if;
			
			when GAMEOVER_STATE =>
			
				GAMEOVER <= '1';
			
			end case;
		
		end if;
		
	end process;

end architecture;