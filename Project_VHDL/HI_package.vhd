library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.vga_package.all;

package HI_package is
	-- Constants declarations
	type shape_type is (ALIEN_1, ALIEN_2, ALIEN_3, RAND_ALIEN, PLAYER);
	
	-- Hitbox declaration
	type hitbox_type is record 
		up_left_x         : integer;
		up_left_y         : integer;
		size_x				: integer;
		size_y				: integer;
	end record;
	
	-- Spaceship declaration 	
	type spaceship is record
		ship_type      	: shape_type;
		hitbox				: hitbox_type;
		visible				: std_logic;
		exploding			: std_logic;
	end record;	
	
	-- Bullet declaration
	type bullet is record
		bullet_type			: shape_type;
		hitbox				: hitbox_type;
		visible 				: std_logic;
		exploding			: std_logic;
	end record;

	-- Level declaration
	type level is record
		starting_line		: integer range 0 to (ROWS-1); -- definire ROWS
		alienSpeed			: integer;
		alienFrameNanos	: integer;
		alienFrameNanosDecrement	: integer;
		alienExploding		: std_logic;
	end record;
	
	type img_pixels_type is array(0 to 31, 0 to 31) of std_logic;
	
	type sprite_type is record 
		img_pixels				: img_pixels_type;
		color 					: color_type;
	end record;
	
	CONSTANT dummy_sprite: sprite_type := 
	(
		(
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111",
		"11111111111111111111111111111111"
		),
		COLOR_WHITE
	);
	
end package;