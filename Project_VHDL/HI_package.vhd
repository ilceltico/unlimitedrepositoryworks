library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

package HI_package is
	-- Constants declarations
	type spaceship_type is (ALIEN_1, ALIEN_2, ALIEN_3, RAND_ALIEN, PLAYER);
	
	-- Hitbox declaration
	type hitbox_type is record 
		up_left_x         : integer;
		up_left_y         : integer;
		size_x				: integer;
		size_y				: integer;
	end record;
	
	-- Spaceship declaration 	
	type spaceship is record
		ship_type      	: spaceship_type;
		hitbox				: hitbox_type;
		-- visible			: std_logic;
		exploding			: std_logic;
	end record;	

	
end package;