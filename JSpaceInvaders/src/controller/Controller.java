package controller;

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
	private Player player;
	private Direction playerDirection = Direction.NONE;
	private Bullet playerBullet;
	private Canvas canvas;
	
	public Controller(Canvas canvas, MediaPlayer mediaPlayer) {
		super();
		this.canvas = canvas;
		this.player = game.getPlayer();
		this.mediaPlayer = mediaPlayer;
		
		//InitPlayerBullets
		playerBullet = new Bullet(game.getPlayerBulletType(), 0, 0);
	}
	
	public void startGame() {
		mediaPlayer.play();
		animator.start();
	}
	
	public void restartGame() {
		game.reinitializeGame();
		currentLevel = 1;
		startGame();
	}
	
	public void moveAliens() {
		getCurrentLevel().moveAliens(canvas);
	}
	
	public void movePlayer() {
		player.move(playerDirection);
	}
	
	public void movePlayerBullet() {
		playerBullet.move(Direction.UP);
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
		return player;
	}

	public Bullet getPlayerBullet() {
		return playerBullet;
	}
	
	public void setAnimator(Animator animator) {
		this.animator = animator;
	}
	
	public void gameOver() {
		mediaPlayer.stop();
		currentLevel = -1;
		canvas.getGraphicsContext2D().drawImage(new Image("file:images/GameOver.png"), 0, 0, canvas.getWidth(), canvas.getHeight());
	}
	
	public void keyPressed(KeyEvent e) {
		switch (e.getCode().toString()) {
		case "LEFT": playerDirection = Direction.LEFT; break;
		case "RIGHT": playerDirection = Direction.RIGHT; break;
		case "SPACE": if (!playerBullet.isVisible()) {
				playerBullet.setVisible(true);
				playerBullet.setCenterPosition(player.getHitbox().getCenterX(), player.getHitbox().getUpLeftY());;
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

}
