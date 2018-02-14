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
import program.Game;
import utils.Commons;

public class Controller implements EventHandler<KeyEvent> {
	
	private Game game = Game.getGame();
	
	private int currentLevel = 1;
	//private Player player;
	//private Bullet[] playerBullets;
	private Canvas canvas;
	
	public Controller(Canvas canvas) {
		super();
		this.canvas = canvas;
//		
//		//InitPlayerBullets
//		playerBullets = new Bullet[Commons.PLAYERBULLETSNUMBER];
//		for (int i=0; i<Commons.PLAYERBULLETSNUMBER; i++) {
//			//playerBullets[i] = new Bullet();
//		}
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
	
	public int getCurrentLevelNumber() {
		return currentLevel;
	}
	
	public Level getCurrentLevel() {
		return game.getLevel(currentLevel);
	}

//	public Player getPlayer() {
//		return player;
//	}
//
//	public Bullet[] getPlayerBullets() {
//		return playerBullets;
//	}

}
