package controller;

import java.sql.Time;
import java.util.Random;

import javafx.event.EventHandler;
import javafx.scene.canvas.Canvas;
import javafx.scene.image.Image;
import javafx.scene.input.KeyEvent;
import javafx.scene.media.MediaPlayer;
import model.Bullet;
import model.Column;
import model.Direction;
import model.Level;
import model.Player;
import model.Spaceship;
import model.SpaceshipType;
import model.Sprite;
import program.Game;
import utils.Commons;
import view.Animator;

public class Controller implements EventHandler<KeyEvent> {
	
	private Game game = Game.getGame();
	private Animator animator;
	private MediaPlayer mediaPlayer;
	
	private int currentLevel = 1; //-1 states that game is over
	private int alienCount;
	private Direction playerDirection = Direction.NONE;
	private Direction randAlienDirection = Direction.RIGHT;
	private Canvas canvas;
	
	private int points=0;
	
	public Controller(Canvas canvas, MediaPlayer mediaPlayer) {
		super();
		this.canvas = canvas;
		this.mediaPlayer = mediaPlayer;
	}
	
	public void startGame() {
		alienCount = Commons.ROWNUMBER * Commons.COLNUMBER;
		mediaPlayer.play();
		animator.start();
	}
	
	public void nextlevel() {
		currentLevel++;
		alienCount = Commons.ROWNUMBER * Commons.COLNUMBER;
		game.reinitializeGame();
		animator.start();
	}
	
	public void restartGame() {
		currentLevel = 1;
		game.reinitializeGame();
		startGame();
	}
	
	public void moveAliens() {
		getCurrentLevel().moveAliens();
	}
	
	public void moveRandAlien() {
		
		boolean touches= false;
		boolean right = randAlienDirection == Direction.RIGHT;
		int canvasLimit = right ? 
				(Commons.GRIDWIDTH - Commons.SIDEMARGIN) : (Commons.SIDEMARGIN);
					
		getRandAlien().setVisible(true);
		getRandAlien().move(randAlienDirection, getRandAlienSpeed());
		
		if ((getRandAlien().isVisible() && (right && getRandAlien().getHitbox().getDownRightX() > canvasLimit
			|| !right && getRandAlien().getHitbox().getUpLeftX() < canvasLimit))) {
				touches = true;
				getRandAlien().setVisible(false);
				getRandAlien().move(Direction.NONE, 0);
			}
		if (touches) {
				if (randAlienDirection == Direction.RIGHT)
					randAlienDirection = Direction.LEFT;
				else
					randAlienDirection = Direction.RIGHT;
			}
			
		}

	
	private int getRandAlienSpeed() {
		return game.getRandAlienSpeed();
	}
	
	public void movePlayer() {
		getPlayer().move(playerDirection);
	}
	
	public void movePlayerBullet() {
		if (!game.getPlayerBullet().isExploding())
			game.getPlayerBullet().move(Direction.UP);
	}
	
	public int decreaseAlienCount() {
		alienCount--;
		getCurrentLevel().speedUp();
		if (alienCount == 0) {
			gameOver();
		}
		return alienCount;
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

	public Player getPlayer() {
		return game.getPlayer();
	}
	
	public Bullet getPlayerBullet() {
		return game.getPlayerBullet();
	}
	
	public Bullet[] getAlienBullet() {
		return game.getAlienBullets();
	}
	
	public Spaceship getRandAlien() {
		return game.getRandAlien();
	}
	
	public void setAnimator(Animator animator) {
		this.animator = animator;
	}
	
	public void gameOver() {
		mediaPlayer.stop();
		animator.stop();
		currentLevel = -1;
		canvas.getGraphicsContext2D().drawImage(new Image("file:images/GameOver.png"), 0, 0, canvas.getWidth(), canvas.getHeight());
	}
	
	public void keyPressed(KeyEvent e) {
		switch (e.getCode().toString()) {
		case "LEFT": playerDirection = Direction.LEFT; break;
		case "RIGHT": playerDirection = Direction.RIGHT; break;
		case "SPACE": if (!game.getPlayerBullet().isVisible()) {
				game.getPlayerBullet().setVisible();
				game.getPlayerBullet().setCenterPosition(getPlayer().getHitbox().getCenterX(), getPlayer().getHitbox().getUpLeftY());;
			}
			break;
		case "ENTER": if (currentLevel<0) restartGame(); break;
		default: break;
		}
	}
	
	public void keyReleased(KeyEvent e) {
		switch (e.getCode().toString()) {
		case "LEFT": playerDirection = Direction.NONE; break;
		case "RIGHT": playerDirection = Direction.NONE; break;
		case "SPACE": break;
		default: break;
		}
	}


	public int getPointsCount(SpaceshipType type) {
		return game.getPoints(type);
	}
	
	public void UpdateScore(int score) {
		points= points+score;
	}
	
	public int getScore() {
		return points;
	}



}


