library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.vga_package.all;

package HI_package is

	-- Common constants
	constant SPRITE_COUNT			: positive 	:= 3;
	constant ALIEN_SPRITE_COUNT	: positive	:= 3;
	constant BULLET_SPRITE_COUNT	: positive 	:= 3;
	constant SHIELD_SPRITE_COUNT	: positive 	:= 4;
	
	constant ALIENS_PER_COLUMN		: positive	:= 10;
	constant COLUMNS_PER_GRID 		: positive  := 10;
	constant SHIELD_COUNT			: positive  := 16;
	constant BULLET_COUNT			: positive 	:= 3;
	constant INDEX_1_MAX				: positive  := 16; -- Set this to the maximum value between SHIELDS_COUNT, BULLET_COUNT and COLUMNS_PER_GRID
	
	constant SPRITE_SIZE				: positive 	:= 32;
	
	--------------------------------------------------------------
	--					        DATAPATH INDEXES                     --
	--------------------------------------------------------------
	
	-- Hitbox type declaration
	type hitbox_type is record 
		up_left_x         : integer;
		up_left_y         : integer;
		size_x				: integer;
		size_y				: integer;
	end record;
	
	--------------------------------------------------------------
	--									SPRITE                           --
	--------------------------------------------------------------
	
	-- Sprite type declaration
	type img_pixels_type is array(0 to SPRITE_SIZE - 1 , 0 to SPRITE_SIZE - 1) of std_logic;
	subtype img_pixel_index_type is integer range 0 to SPRITE_SIZE - 1;
	type sprite_type is record 
		img_pixels				: img_pixels_type;
		logic_dim_x				: integer;
		logic_dim_y				: integer;
		color 					: color_type;
	end record;
	
	-- Array of all sprites
	type sprite_array_type is array (0 to SPRITE_COUNT - 1) of sprite_type;
	subtype sprite_array_index_type is integer range 0 to SPRITE_COUNT - 1;
	
	--------------------------------------------------------------
	--	   							 ALIEN                           --
	--------------------------------------------------------------
	
	-- Alien type declaration
	type alien_sprite_indexes_type is array(0 to ALIEN_SPRITE_COUNT - 1) of sprite_array_index_type;
	subtype alien_sprite_current_index_type is integer range 0 to ALIEN_SPRITE_COUNT - 1;
	type alien_type is record
		sprite_indexes   	: alien_sprite_indexes_type;
		hitbox				: hitbox_type;
		current_index		: alien_sprite_current_index_type;
		visible				: std_logic;
		exploding			: std_logic;
	end record;	
	
	-- Alien Column type declaration
	type alien_column_type is array(0 to ALIENS_PER_COLUMN - 1) of alien_type;
	subtype alien_column_index_type is integer range 0 to ALIENS_PER_COLUMN - 1;
	
	-- Alien Grid type declaration
	type alien_grid_type is array(0 to COLUMNS_PER_GRID - 1) of alien_column_type;
	subtype alien_grid_index_type is integer range 0 to COLUMNS_PER_GRID - 1;
	
	--------------------------------------------------------------
	--									BULLET                           --
	--------------------------------------------------------------
	
	-- Bullet type declaration
	type bullet_sprite_indexes_type is array(0 to BULLET_SPRITE_COUNT - 1) of sprite_array_index_type;
	subtype bullet_sprite_current_index_type is integer range 0 to BULLET_SPRITE_COUNT - 1;
	type bullet_type is record 
		sprite_indexes : bullet_sprite_indexes_type;
		hitbox			: hitbox_type;
		current_index	: bullet_sprite_current_index_type;
		visible			: std_logic;
		exploding		: std_logic;
	end record;
	
	-- Bullet array type declaration
	type bullet_array_type is array(0 to BULLET_COUNT - 1) of bullet_type;
	subtype bullet_array_index_type is integer range 0 to BULLET_COUNT - 1;
	
	--------------------------------------------------------------
	--									SHIELD                           --
	--------------------------------------------------------------
	
	-- Shield type declaration
	type shield_sprite_indexes_type is array(0 to SHIELD_SPRITE_COUNT - 1) of sprite_array_index_type;
	subtype shield_sprite_current_index_type is integer range 0 to SHIELD_SPRITE_COUNT - 1;
	type shield_type is record 
		sprite_indexes : shield_sprite_indexes_type;
		hitbox			: hitbox_type;
		current_index	: shield_sprite_current_index_type;
		visible			: std_logic;
		exploding		: std_logic;
	end record;
	
	-- Bullet array type declaration
	type shield_array_type is array(0 to SHIELD_COUNT - 1) of shield_type;
	subtype shield_array_index_type is integer range 0 to SHIELD_COUNT - 1;
	
	--------------------------------------------------------------
	--					        DATAPATH INDEXES                     --
	--------------------------------------------------------------
	
	-- Datapath entity index type
	type entity_type_type is (ALIEN, ALIEN_BULLET, PLAYER_BULLET, SHIELD, RANDOM_ALIEN, PLAYER);
	subtype index_1_type is integer range 0 to INDEX_1_MAX - 1;
	type datapath_entity_index_type is record
		index_1		: index_1_type;
		index_2 		: alien_column_index_type;
		entity_type : entity_type_type;
	end record;
	
	-- Datapath entity explosion index type
	type entity_explosion_index_type is record
		alien_row_index 			: alien_grid_index_type;
		alien_column_index 		: alien_column_index_type; 
		alien_exploding			: std_logic;
		
		bullet_index				: bullet_array_index_type;
		bullet_exploding			: std_logic;
		
		shield_index				: shield_array_index_type;
		shield_exploding			: std_logic;
		
		player_bullet_exploding : std_logic;
		player_exploding			: std_logic;
		random_alien_exploding	: std_logic;
	end record;
	
	--------------------------------------------------------------
	--					     ARRAY OF ALL SPRITES	                  --
	--------------------------------------------------------------	
	
	constant sprites: sprite_array_type := 
	(
		(
			(
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000011100000000000000111000000",
			"00000011100000000000000111000000",
			"00000011100000000000000111000000",
			"00000000011100000000111000000000",
			"00000000011100000000111000000000",
			"00000000011100000000111000000000",
			"00000011111111111111111111000000",
			"00000011111111111111111111000000",
			"00000011111111111111111111000000",
			"00011111100011111111000111111000",
			"00011111100011111111000111111000",
			"00011111100011111111000111111000",
			"11111111111111111111111111111111",
			"11111111111111111111111111111111",
			"11111111111111111111111111111111",
			"11100011111111111111111111000111",
			"11100011111111111111111111000111",
			"11100011111111111111111111000111",
			"11100011100000000000000111000111",
			"11100011100000000000000111000111",
			"11100011100000000000000111000111",
			"00000000011111100111111000000000",
			"00000000011111100111111000000000",
			"00000000011111100111111000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000"
			),
			32,
			32,
			COLOR_WHITE
		),
		(	
			(
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000011100000000000000111000000",
			"00000011100000000000000111000000",
			"00000011100000000000000111000000",
			"11100000011100000000111000000111",
			"11100000011100000000111000000111",
			"11100000011100000000111000000111",
			"11100011111111111111111111000111",
			"11100011111111111111111111000111",
			"11100011111111111111111111000111",
			"11111111100011111111000111111111",
			"11111111100011111111000111111111",
			"11111111100011111111000111111111",
			"11111111111111111111111111111111",
			"11111111111111111111111111111111",
			"11111111111111111111111111111111",
			"00011111111111111111111111111000",
			"00011111111111111111111111111000",
			"00011111111111111111111111111000",
			"00000011100000000000000111000000",
			"00000011100000000000000111000000",
			"00000011100000000000000111000000",
			"00011100000000000000000000111000",
			"00011100000000000000000000111000",
			"00011100000000000000000000111000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000"
			),
			32,
			32,
			COLOR_WHITE
		),
		( 
			(
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000001110000001110000000000",
			"00011100011110000001110000111000",
			"00011100001111100111110000111000",
			"00011100000011100111000000111000",
			"00000111100011100111000111000000",
			"00000111100000000000000111000000",
			"00000000111000000000011100000000",
			"00000000111000000000011100000000",
			"00111110111000000000011101111100",
			"00111110000000000000000001111100",
			"00111110111000000000011101111100",
			"00000000111000000000011100000000",
			"00000000111011100111011100000000",
			"00000011100011100111000111000000",
			"00000011101111100111110111000000",
			"00011100011110000001110000111000",
			"00011100011110000001110000111000",
			"00011100000000000000000000111000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000",
			"00000000000000000000000000000000"
			),
			32,
			32,
			COLOR_WHITE
		)
	);
end package;