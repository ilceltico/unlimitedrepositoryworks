package program;

import model.Column;
import model.Level;
import model.Spaceship;
import model.SpaceshipType;
import model.Sprite;
import utils.Commons;

public class Game {
	
	//Sprites
	private Sprite[] alien1Sprites;
	private Sprite[] alienExplosionSprites;
	
	//SpaceshipTypes
	private SpaceshipType alien1Type;
	
	//Levels
	private Level[] levels;
	
	private static Game game;
	
	private Game() {	
		initSprites();
		initSpaceshipTypes();
		initPlayer();
		initLevels();
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
	}
	
	private void initSpaceshipTypes() {
		
		alien1Type = new SpaceshipType(alien1Sprites, alienExplosionSprites, Commons.ALIEN1POINTS, Commons.ALIENWIDTH, Commons.ALIENHEIGHT);
	}
	
	private void initLevels() {
		levels = new Level[Commons.LEVELNUMBER];
		
		for (int i=0; i<levels.length; i++) {
			levels[i] = new Level(i, generateColumns(0, i*Commons.ROWSPACE), null, Commons.BASEALIENSPEED, Commons.ALIENSPEEDINCREMENT);
		}
	}
	
	private void initPlayer() {
		
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
	
	
	public Level getLevel(int i) {
		return levels[i-1];
	}
	
	
}
