library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.HI_package.all;

entity Controller is
	port 
	(
		CLOCK           	: in std_logic;
		RESET_N				: in std_logic;
		
		NEW_GAME				: in std_logic;
		HAS_LIVES 			: in std_logic;
		HAS_ALIENS			: in std_logic;
		
		RESET_ALIEN 		: out std_logic;
		RESET_PLAYER 		: out std_logic;
		RESET_BULLETS 		: out std_logic;
	);
end entity;

architecture RTL of Controller is
	type game_state_type is (RESET_ALL, IN_GAME, NEXT_LEVEL, GAMEOVER, GAME_WON);
	signal game_state				: game_state_type;
	signal level_no				: integer;

begin
		Controller_RTL : process (CLOCK, RESET_N)
		begin
		if(RESET_N = '0') then
			-- All parameters to default
			level_no = 1;
			game_state <- RESET_ALL;
		elsif rising_edge(CLOCK) then
			
			
			case (state) is 
				
				when RESET_ALL => 
					if (NEW_GAME = '1') then
						state <= IN_GAME;
					end if;
				
				when IN_GAME => 
					if (HAS_LIVES = '0') then
						state <= GAME_OVER;
					elsif (HAS_ALIENS = '0') then
						state <- NEXT_LEVEL;
					end if;
					
				when GAMEOVER => 
					if (NEW_GAME = '1') then
						state <= IN_GAME;
					else
						-- Mostra schermata Game Over
					end if;
					
				when NEXT_LEVEL => 
					RESET_ALIEN = '1';
					RESET_PLAYER = '1';
					RESET_BULLETS = '1';
					level_no = level_no + 1;
					if (level_no = MAX_LEVEL) then	
						state <= GAME_WON;
					else 
						-- Mostra to_level
						-- wait...
						state <= IN_GAME;
					end if;	
					
				when GAME_WON => 
					if (NEW_GAME = '1') then
						state <= IN_GAME;
					else
						-- Mostra schermata Game Won
					end if;	
end architecture
	
	
	