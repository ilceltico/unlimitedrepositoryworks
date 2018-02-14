package controller;

import javafx.event.EventHandler;
import javafx.scene.canvas.Canvas;
import javafx.scene.input.KeyEvent;
import model.Bullet;
import model.Column;
import model.Level;
import model.Player;
import model.Spaceship;
import model.SpaceshipType;
import model.Sprite;
import utils.Commons;

public class Controller implements EventHandler<KeyEvent> {
	
	private Level[] levels;
	private int currentLevel;
	private Player player;
	private Bullet[] playerBullets;
	private Canvas canvas;
	
	public Controller(Canvas canvas) {
		super();
		this.canvas = canvas;
		
		//InitLevels
		levels = new Level[1];
		currentLevel = 0;
		Sprite[] sprites1 = {new Sprite("file:images/Alien1_1.png"), new Sprite("file:images/Alien1_2.png")};
		SpaceshipType stype1 = new SpaceshipType(sprites1, new Sprite("file:images/Alien1_1.png"), 20, Commons.ALIENWIDTH, Commons.ALIENHEIGHT);
		//LV1
		Column[] columns = new Column[Commons.COLNUMBER];
		int x = Commons.FIRSTALIENCELLX, y = Commons.FIRSTALIENCELLY;
		for (int i=0; i<columns.length; i++) {
			Spaceship[] spaceships = new Spaceship[Commons.ROWNUMBER];
			for (int j=0; j<spaceships.length; j++) {
				spaceships[j] = new Spaceship(stype1, x, y);
				y += Commons.ALIENWIDTH + Commons.ROWSPACE;
			}
			x += Commons.ALIENWIDTH + Commons.COLUMNSPACE;
			y = Commons.FIRSTALIENCELLY;
			columns[i] = new Column(spaceships);
		}
		levels[0] = new Level(0, columns, null, Commons.BASEALIENSPEED, Commons.ALIENSPEEDINCREMENT);
		
		//InitPlayer
		
		//InitPlayerBullets
		playerBullets = new Bullet[Commons.PLAYERBULLETSNUMBER];
		for (int i=0; i<Commons.PLAYERBULLETSNUMBER; i++) {
			//playerBullets[i] = new Bullet();
		}
	}
	
	public void moveAliens() {
		getCurrentLevel().moveAliens(canvas);
	}

	@Override
	public void handle(KeyEvent event) {
		if (event.getEventType() == KeyEvent.KEY_PRESSED) {
			
		}
		else if (event.getEventType() == KeyEvent.KEY_RELEASED) {
			
		}
	}
	
	
	public Level[] getLevels() {
		return levels;
	}
	
	public int getCurrentLevelNumber() {
		return currentLevel;
	}
	
	public Level getCurrentLevel() {
		return levels[currentLevel];
	}

	public Player getPlayer() {
		return player;
	}

	public Bullet[] getPlayerBullets() {
		return playerBullets;
	}

}
