package program;

import model.BulletType;
import model.Column;
import model.Level;
import model.Player;
import model.Shield;
import model.ShieldType;
import model.Spaceship;
import model.SpaceshipType;
import model.Sprite;
import utils.Commons;

public class Game {
	
	//Sprites
	private Sprite[] alien1Sprites;
	private Sprite[] alien2Sprites;
	private Sprite[] alien3Sprites;
	private Sprite[] randAlienSprite;
	private Sprite[] alienExplosionSprites;
	
	private Sprite[] playerSprites;
	private Sprite[] playerExplosionSprites;
	
	private Sprite[] bullet1Sprites;
	private Sprite[] bullet2Sprites;
	private Sprite[] bullet3Sprites;
	private Sprite bulletsExplosionSprite;
	private Sprite[] playerBulletSprites;
	private Sprite playerBulletExplosionSprite;
	
	private Sprite[] shield1Sprites;
	private Sprite[] shield2Sprites;
	private Sprite[] shield3Sprites;
	private Sprite[] shield4Sprites;
	
	//SpaceshipTypes
	private SpaceshipType alien1Type;
	private SpaceshipType alien2Type;
	private SpaceshipType alien3Type;
	private SpaceshipType randAlienType;
	
	private SpaceshipType playerType;
	
	//ShieldTypes
	private ShieldType[] shieldTypes;
	
	//Shields
	private Shield[] shields;
	
	//Levels
	private Level[] levels;
	
	//Player
	private Player player;
	
	//RandAlien
	private Spaceship randAlien;
	
	//Bullets
	private BulletType alienBullet1Type;
	private BulletType alienBullet2Type;
	private BulletType alienBullet3Type;
	private BulletType playerBulletType;
	
	private static Game game;
	
	private Game() {	
		initSprites();
		initSpaceshipTypes();
		initShieldTypes();
		initShields();
		initLevels();
		initPlayer();
		initRandAlien();
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
		
		randAlienSprite= new Sprite[1];
		randAlienSprite[0]= new Sprite("file:images/Alien4.png");

		alienExplosionSprites = new Sprite[1];
		alienExplosionSprites[0] = new Sprite("file:images/AlienExplosion.png");
		
		//Player
		playerSprites = new Sprite[1];
		playerSprites[0] = new Sprite("file:images/Player.png");
		playerExplosionSprites = new Sprite[2];
		playerExplosionSprites[0] = new Sprite("file:images/PlayerExplosion1.png");
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
		
		bulletsExplosionSprite = new Sprite("file:images/AlienBulletExplosion.png");
		
		playerBulletSprites = new Sprite[1];
		playerBulletSprites[0] = new Sprite("file:images/PlayerBullet.png");
		playerBulletExplosionSprite = new Sprite("file:images/PlayerBulletExplosion.png");
		
		//Shields
		shield1Sprites = new Sprite[4];
		int j;
		for (int i=0; i<shield1Sprites.length; i++) {
			j = 3-i;
			shield1Sprites[i] = new Sprite("file:images/Shield1_"+j+".png");
		}
		shield2Sprites = new Sprite[4];
		for (int i=0; i<shield2Sprites.length; i++) {
			j = 3-i;
			shield2Sprites[i] = new Sprite("file:images/Shield2_"+j+".png");
		}
		shield3Sprites = new Sprite[4];
		for (int i=0; i<shield3Sprites.length; i++) {
			j = 3-i;
			shield3Sprites[i] = new Sprite("file:images/Shield3_"+j+".png");
		}
		shield4Sprites = new Sprite[4];
		for (int i=0; i<shield4Sprites.length; i++) {
			j = 3-i;
			shield4Sprites[i] = new Sprite("file:images/Shield4_"+j+".png");
		}
	}
	
	private void initSpaceshipTypes() {
		alien1Type = new SpaceshipType(alien1Sprites, alienExplosionSprites, Commons.ALIEN1POINTS, Commons.ALIENWIDTH, Commons.ALIENHEIGHT);
		alien2Type = new SpaceshipType(alien2Sprites, alienExplosionSprites, Commons.ALIEN2POINTS, Commons.ALIENWIDTH, Commons.ALIENHEIGHT);
		alien3Type = new SpaceshipType(alien3Sprites, alienExplosionSprites, Commons.ALIEN3POINTS, Commons.ALIENWIDTH, Commons.ALIENHEIGHT);
		
		randAlienType = new SpaceshipType(randAlienSprite, alienExplosionSprites,Commons.ALIEN4POINTS, Commons.RANDALIENWIDTH, Commons.RANDALIENHEIGHT);

		playerType = new SpaceshipType(playerSprites, playerExplosionSprites, 0, Commons.PLAYERWIDTH, Commons.PLAYERHEIGHT);
	}
	
	public void initShieldTypes() {
		shieldTypes = new ShieldType[4];
		shieldTypes[0] = new ShieldType(shield1Sprites, Commons.SHIELDWIDTH, Commons.SHIELDHEIGHT);
		shieldTypes[1] = new ShieldType(shield2Sprites, Commons.SHIELDWIDTH, Commons.SHIELDHEIGHT);
		shieldTypes[2] = new ShieldType(shield3Sprites, Commons.SHIELDWIDTH, Commons.SHIELDHEIGHT);
		shieldTypes[3] = new ShieldType(shield4Sprites, Commons.SHIELDWIDTH, Commons.SHIELDHEIGHT);
	}
	
	public void initShields() {
		int x = Commons.SHIELDHSPACE;
		int y = Commons.SHIELD1Y;
		shields = new Shield[4*4];
		for (int i=0; i<4; i++) {
			for (int j=0; j<4; j++) {
				shields[j+i*4] = new Shield(shieldTypes[j], x, y);
				y = (y==Commons.SHIELD1Y)?Commons.SHIELD2Y:Commons.SHIELD1Y;
				if (j%2 != 0)
					x += Commons.SHIELDWIDTH - Commons.SHIELDHORIZONTALOVERLAP;
			}
			x += Commons.SHIELDHSPACE;
		}
	}
	
	private void initLevels() {
		levels = new Level[Commons.LEVELNUMBER];
		
		for (int i=0; i<levels.length; i++) {
			levels[i] = new Level(i, generateColumns(0, i*Commons.ROWSPACE), shields, Commons.ALIENSPEED, Commons.BASEALIENFRAMENANOS, Commons.ALIENFRAMENANOSDECREASE);
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
	
	private void initRandAlien() {
		randAlien = new Spaceship(randAlienType, Commons.FIRSTRANDALIENCELLX, Commons.FIRSTRANDALIENCELLY);
		
	}
	
	public void initBullets() {
		alienBullet1Type = new BulletType(bullet1Sprites, bulletsExplosionSprite, Commons.ALIENBULLETSPEED, Commons.ALIENBULLETWIDTH, Commons.ALIENBULLETHEIGHT, Commons.ALIENBULLETFRAMENANOS);
		alienBullet2Type = new BulletType(bullet2Sprites, bulletsExplosionSprite, Commons.ALIENBULLETSPEED, Commons.ALIENBULLETWIDTH, Commons.ALIENBULLETHEIGHT, Commons.ALIENBULLETFRAMENANOS);
		alienBullet3Type = new BulletType(bullet3Sprites, bulletsExplosionSprite, Commons.ALIENBULLETSPEED, Commons.ALIENBULLETWIDTH, Commons.ALIENBULLETHEIGHT, Commons.ALIENBULLETFRAMENANOS);
		playerBulletType = new BulletType(playerBulletSprites, playerBulletExplosionSprite, Commons.PLAYERBULLETSPEED, Commons.PLAYERBULLETWIDTH, Commons.PLAYERBULLETHEIGHT, Commons.PLAYERBULLETFRAMENANOS);
	}
	
	
	public Level getLevel(int i) {
		return levels[i-1];
	}
	
	public Player getPlayer() {
		return player;
	}
	
	public Spaceship getRandAlien() {
		return randAlien;
	}
	
	public BulletType getPlayerBulletType() {
		return playerBulletType;
	}
	
	public void reinitializeGame() {
		initShields();
		initLevels();
		initPlayer();
		initRandAlien();
	}
	
	public void changeAlienSprites() {
		alien1Type.nextSprite();
		alien2Type.nextSprite();
		alien3Type.nextSprite();
		
	}

	public int getPoints(SpaceshipType type) {
		int points=0;
		if(type.equals(alien1Type)) points= Commons.ALIEN1POINTS;
		if(type.equals(alien2Type)) points= Commons.ALIEN2POINTS;
		if(type.equals(alien3Type)) points= Commons.ALIEN3POINTS;
		if(type.equals(randAlienType)) points= Commons.ALIEN4POINTS;
		
		/*int randpoints=0;
		if(type.equals(randAlienType)) {
			switch(randpoints) {
				case 1 : randpoints=50;
							break;
				case 2 : randpoints=150;
							break;
				case 3 : randpoints=100;
							break;
				case 4: randpoints=300;
							break;
				}
		points=randpoints+Commons.ALIEN4POINTS;	
			
		};
		//System.out.println("[Game: points]"+points+"\n");*/
		return points;
		
		
	}

	public int getRandAlienSpeed() {
		
		return Commons.RANDALIENSPEED;
	}
	
}
