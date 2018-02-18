package program;

import model.BulletType;
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
	private Sprite[] alien2Sprites;
	private Sprite[] alien3Sprites;
	private Sprite[] alienExplosionSprites;
	
	private Sprite[] playerSprites;
	private Sprite[] playerExplosionSprites;
	
	private Sprite[] bullet1Sprites;
	private Sprite[] bullet2Sprites;
	private Sprite[] bullet3Sprites;
	private Sprite[] playerBulletSprites;
	
	//SpaceshipTypes
	private SpaceshipType alien1Type;
	private SpaceshipType alien2Type;
	private SpaceshipType alien3Type;
	
	private SpaceshipType playerType;
	
	//Levels
	private Level[] levels;
	
	//Player
	private Player player;
	
	//Bullets
	private BulletType alienBullet1Type;
	private BulletType alienBullet2Type;
	private BulletType alienBullet3Type;
	private BulletType playerBulletType;
	
	private static Game game;
	
	private Game() {	
		initSprites();
		initSpaceshipTypes();
		initLevels();
		initPlayer();
		initBullets();
	}
	
	public static Game getGame() {
		if (game == null)
			game = new Game();
		return game;
	}
	
	private void initSprites() {
		//Aliens
		alien1Sprites = new Sprite[2];
		alien1Sprites[0] = new Sprite("file:images/Alien1_1.png"); 
		alien1Sprites[1] = new Sprite("file:images/Alien1_2.png");
		alien2Sprites = new Sprite[2];
		alien2Sprites[0] = new Sprite("file:images/Alien2_1.png");
		alien2Sprites[1] = new Sprite("file:images/Alien2_2.png");
		alien3Sprites = new Sprite[2];
		alien3Sprites[0] = new Sprite("file:images/Alien3_1.png");
		alien3Sprites[1] = new Sprite("file:images/Alien3_2.png");
		
		alienExplosionSprites = new Sprite[1];
		alienExplosionSprites[0] = new Sprite("file:images/AlienExplosion.png");
		
		//Player
		playerSprites = new Sprite[1];
		playerSprites[0] = new Sprite("file:images/Player.png");
		playerExplosionSprites = new Sprite[2];
		playerExplosionSprites[0] = new Sprite("file:images/PlayerEsplosion1.png");
		playerExplosionSprites[1] = new Sprite("file:images/PlayerExplosion2.png");
		
		//Bullets
		bullet1Sprites = new Sprite[4];
		bullet1Sprites[0] = new Sprite("file:images/AlienBullet1_1.png");
		bullet1Sprites[1] = new Sprite("file:images/AlienBullet1_1.png");
		bullet1Sprites[2] = new Sprite("file:images/AlienBullet1_2.png");
		bullet1Sprites[3] = new Sprite("file:images/AlienBullet1_2.png");
		
		bullet2Sprites = new Sprite[4];
		bullet2Sprites[0] = new Sprite("file:images/AlienBullet2_1.png");
		bullet2Sprites[1] = new Sprite("file:images/AlienBullet2_1.png");
		bullet2Sprites[2] = new Sprite("file:images/AlienBullet2_2.png");
		bullet2Sprites[3] = new Sprite("file:images/AlienBullet2_2.png");
		
		bullet3Sprites = new Sprite[4];
		bullet3Sprites[0] = new Sprite("file:images/AlienBullet3_1.png");
		bullet3Sprites[1] = new Sprite("file:images/AlienBullet3_1.png");
		bullet3Sprites[2] = new Sprite("file:images/AlienBullet3_2.png");
		bullet3Sprites[3] = new Sprite("file:images/AlienBullet3_2.png");
		
		playerBulletSprites = new Sprite[1];
		playerBulletSprites[0] = new Sprite("file:images/PlayerBullet.png");
	}
	
	private void initSpaceshipTypes() {
		alien1Type = new SpaceshipType(alien1Sprites, alienExplosionSprites, Commons.ALIEN1POINTS, Commons.ALIENWIDTH, Commons.ALIENHEIGHT);
		alien2Type = new SpaceshipType(alien2Sprites, alienExplosionSprites, Commons.ALIEN2POINTS, Commons.ALIENWIDTH, Commons.ALIENHEIGHT);
		alien3Type = new SpaceshipType(alien3Sprites, alienExplosionSprites, Commons.ALIEN3POINTS, Commons.ALIENWIDTH, Commons.ALIENHEIGHT);

		playerType = new SpaceshipType(playerSprites, playerExplosionSprites, 0, Commons.PLAYERWIDTH, Commons.PLAYERHEIGHT);
	}
	
	private void initLevels() {
		levels = new Level[Commons.LEVELNUMBER];
		
		for (int i=0; i<levels.length; i++) {
			levels[i] = new Level(i, generateColumns(0, i*Commons.ROWSPACE), null, Commons.ALIENSPEED, Commons.BASEFPS, Commons.FPSINCREASE);
		}
	}
	
	private Column[] generateColumns(int shiftX, int shiftY) {
		Column[] columns = new Column[Commons.COLNUMBER];
		Spaceship[] spaceships;
		int x = Commons.FIRSTALIENCELLX, y = Commons.FIRSTALIENCELLY;
		for (int i = 0; i < columns.length; i++) {
			spaceships = new Spaceship[Commons.ROWNUMBER];
			if (spaceships.length < 3)
				throw new IllegalArgumentException("Invalid ROWNUMBER parameter");
			spaceships[0] = new Spaceship(alien3Type, x, y);
			y += Commons.ALIENHEIGHT + Commons.ROWSPACE;
			spaceships[1] = new Spaceship(alien2Type, x, y);
			y += Commons.ALIENHEIGHT + Commons.ROWSPACE;
			spaceships[2] = new Spaceship(alien2Type, x, y);
			y += Commons.ALIENHEIGHT + Commons.ROWSPACE;
			
			for (int j = 3; j < spaceships.length; j++) {
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
	
	public void initBullets() {
		alienBullet1Type = new BulletType(bullet1Sprites, Commons.ALIENBULLETSPEED, Commons.ALIENBULLETWIDTH, Commons.ALIENBULLETHEIGHT);
		alienBullet2Type = new BulletType(bullet2Sprites, Commons.ALIENBULLETSPEED, Commons.ALIENBULLETWIDTH, Commons.ALIENBULLETHEIGHT);
		alienBullet3Type = new BulletType(bullet3Sprites, Commons.ALIENBULLETSPEED, Commons.ALIENBULLETWIDTH, Commons.ALIENBULLETHEIGHT);
		playerBulletType = new BulletType(playerBulletSprites, Commons.PLAYERBULLETSPEED, Commons.PLAYERBULLETWIDTH, Commons.PLAYERBULLETHEIGHT);
	}
	
	
	public Level getLevel(int i) {
		return levels[i-1];
	}
	
	public Player getPlayer() {
		return player;
	}
	
	public BulletType getPlayerBulletType() {
		return playerBulletType;
	}
	
	public void reinitializeGame() {
		initLevels();
		initPlayer();
	}
	
	public void changeAlienSprites() {
		alien1Type.nextSprite();
		alien2Type.nextSprite();
		alien3Type.nextSprite();
	}
	
}