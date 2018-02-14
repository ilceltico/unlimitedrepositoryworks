package program;

import model.Column;
import model.Level;
import model.Player;
import model.Spaceship;
import model.SpaceshipType;
import model.Sprite;
import utils.Commons;

public class Game {
	
	//Sprites
	private Sprite[] alien1Sprites;
	private Sprite[] alienExplosionSprites;
	
	private Sprite[] playerSprites;
	private Sprite[] playerExplosionSprites;
	
	//SpaceshipTypes
	private SpaceshipType alien1Type;
	
	private SpaceshipType playerType;
	
	//Levels
	private Level[] levels;
	
	//Player
	private Player player;
	
	private static Game game;
	
	private Game() {	
		initSprites();
		initSpaceshipTypes();
		initLevels();
		initPlayer();
	}
	
	public static Game getGame() {
		if (game == null)
			game = new Game();
		return game;
	}
	
	private void initSprites() {
		alien1Sprites = new Sprite[2];
		alien1Sprites[0] = new Sprite("file:images/Alien1_1.png"); 
		alien1Sprites[1] = new Sprite("file:images/Alien1_2.png");
		
		alienExplosionSprites = new Sprite[1];
		alienExplosionSprites[0] = new Sprite("file:images/AlienExplosion.png");
		
		playerSprites = new Sprite[1];
		playerSprites[0] = new Sprite("file:images/Player.png");
		playerExplosionSprites = new Sprite[2];
		playerExplosionSprites[0] = new Sprite("file:images/PlayerEsplosion1.png");
		playerExplosionSprites[1] = new Sprite("file:images/PlayerExplosion2.png");
	}
	
	private void initSpaceshipTypes() {
		alien1Type = new SpaceshipType(alien1Sprites, alienExplosionSprites, Commons.ALIEN1POINTS, Commons.ALIENWIDTH, Commons.ALIENHEIGHT);
		
		playerType = new SpaceshipType(playerSprites, playerExplosionSprites, 0, Commons.PLAYERWIDTH, Commons.PLAYERHEIGHT);
	}
	
	private void initLevels() {
		levels = new Level[Commons.LEVELNUMBER];
		
		for (int i=0; i<levels.length; i++) {
			levels[i] = new Level(i, generateColumns(0, i*Commons.ROWSPACE), null, Commons.BASEALIENSPEED, Commons.ALIENSPEEDINCREMENT);
		}
	}
	
	private Column[] generateColumns(int shiftX, int shiftY) {
		Column[] columns = new Column[Commons.COLNUMBER];
		Spaceship[] spaceships;
		int x = Commons.FIRSTALIENCELLX, y = Commons.FIRSTALIENCELLY;
		for (int i = 0; i < columns.length; i++) {
			spaceships = new Spaceship[Commons.ROWNUMBER];
			for (int j = 0; j < spaceships.length; j++) {
				spaceships[j] = new Spaceship(alien1Type, x, y);
				y += Commons.ALIENHEIGHT + Commons.ROWSPACE;
			}
			y = Commons.FIRSTALIENCELLY;
			x += Commons.ALIENWIDTH + Commons.COLUMNSPACE;
			columns[i] = new Column(spaceships);
		}
		return columns;
	}
	
	private void initPlayer() {
		player = new Player(playerType, Commons.PLAYERSTARTX, Commons.PLAYERSTARTY, Commons.PLAYERLIVES, Commons.PLAYERSPEED);
	}
	
	
	public Level getLevel(int i) {
		return levels[i-1];
	}
	
	public Player getPlayer() {
		return player;
	}
	
	
}
