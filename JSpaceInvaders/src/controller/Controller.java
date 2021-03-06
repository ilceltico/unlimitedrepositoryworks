package controller;

import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

import javafx.scene.canvas.Canvas;
import javafx.scene.image.Image;
import javafx.scene.input.KeyEvent;
import javafx.scene.media.MediaPlayer;
import model.Bullet;
import model.Direction;
import model.Level;
import model.Player;
import model.Spaceship;
import model.SpaceshipType;
import program.Game;
import utils.Commons;
import view.Animator;

public class Controller {
	
	private Game game = Game.getGame();
	private Animator animator;
	private MediaPlayer mediaPlayer;
	
	private int currentLevel = 1; //-1 states that game is over
	private int alienCount;
	private long alienBulletGenerationNanos = Commons.BASEALIENBULLETGENERATIONNANOS;
	private Direction playerDirection = Direction.NONE;
	private Direction randAlienDirection = Direction.RIGHT;
	private Canvas canvas;
	private Random rand = new Random();
	
	private int points;
	
	public Controller(Canvas canvas, MediaPlayer mediaPlayer) {
		super();
		this.canvas = canvas;
		this.mediaPlayer = mediaPlayer;
	}
	
	public void startGame() {
		points = 0;
		alienBulletGenerationNanos = Commons.BASEALIENBULLETGENERATIONNANOS;
		alienCount = Commons.ROWNUMBER * Commons.COLNUMBER;
		mediaPlayer.stop();
		mediaPlayer.play();
		animator.resetLastRandAlienGenerationNanos();
		animator.start();
	}
	
	public void nextlevel() {
		animator.stop();
		if (currentLevel < Commons.LEVELNUMBER) {
			canvas.getGraphicsContext2D().clearRect(0, 0, Commons.GRIDWIDTH, Commons.GRIDHEIGHT);
			canvas.getGraphicsContext2D().setFill(Color.WHITE);
			canvas.getGraphicsContext2D().setFont(Font.font("PerfectLed123"));
			canvas.getGraphicsContext2D().fillText(" To Level "+ ++currentLevel, 220, Commons.GRIDHEIGHT/2);
			game.reinitializeGame();
			alienCount = Commons.ROWNUMBER * Commons.COLNUMBER;
			alienBulletGenerationNanos = Commons.BASEALIENBULLETGENERATIONNANOS;
			new Timer().schedule(new TimerTask() {
				public void run() {
					animator.resetLastRandAlienGenerationNanos();
					animator.start();
				}
			}, 2000);
		}
		else
			gameWon();
		
	}
	
	public void restartGame() {
		currentLevel = 1;
		game.reinitializeGame();
		game.getPlayer().setLives(Commons.PLAYERLIVES);
		startGame();
	}
	
	public void moveAliens() {
		getCurrentLevel().moveAliens();
	}
	
	public void moveAlienBullet(int i) {
		if (getAlienBullets()[i].isVisible()) {
			if (!getAlienBullets()[i].isExploding())
				getAlienBullets()[i].move(Direction.DOWN);
		}
	}
	
	public void moveRandAlien() {
		
		boolean touches= false;
		boolean right = randAlienDirection == Direction.RIGHT;
		int canvasLimit = right ? 
				(Commons.GRIDWIDTH - Commons.SIDEMARGIN) : (Commons.SIDEMARGIN);
		getRandAlien().setVisible(true);
		getRandAlien().move(randAlienDirection, getRandAlienSpeed());
		
		if ((getRandAlien().isVisible() && (right && getRandAlien().getHitbox().getUpLeftX() > canvasLimit
			|| !right && getRandAlien().getHitbox().getDownRightX() < canvasLimit))) {
				touches = true;
				getRandAlien().setVisible(false);
		}
		if (touches) {
				if (randAlienDirection == Direction.RIGHT)
					randAlienDirection = Direction.LEFT;
				else
					randAlienDirection = Direction.RIGHT;
		}			
	}

	
	private int getRandAlienSpeed() {
		return Commons.RANDALIENSPEED;
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
		alienBulletGenerationNanos -= Commons.ALIENBULLETGENERATIONNANOSDECREASE;
		return alienCount;
	}


	public void decreasePlayerLives() {
		getPlayer().setLives(getPlayer().getLives()-1);
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
	
	public Bullet[] getAlienBullets() {
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
		canvas.getGraphicsContext2D().drawImage(new Image("file:images/GameOver.png"), 0, 0, canvas.getWidth(), canvas.getHeight());
		currentLevel = -1;
	}
	
	public void keyPressed(KeyEvent e) {
		switch (e.getCode().toString()) {
		case "LEFT": playerDirection = Direction.LEFT; break;
		case "RIGHT": playerDirection = Direction.RIGHT; break;
		case "SPACE": if (currentLevel > 0 && !game.getPlayerBullet().isVisible() && !getCurrentLevel().isAlienExploding()) {
				getPlayer().shoot(getPlayerBullet());
				//game.getPlayerBullet().setVisible();
				//game.getPlayerBullet().setCenterPosition(getPlayer().getHitbox().getCenterX(), getPlayer().getHitbox().getUpLeftY());;
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
		points = points+score;
	}
	
	public int getScore() {
		return points;
	}

	public long getAlienBulletGenerationNanos() {
		return alienBulletGenerationNanos;
	}
	
	public void alienShoot() {
		Bullet bullet = alienBulletPriorityEncoder();
		if (bullet != null) {
			int i=rand.nextInt(Commons.COLNUMBER);
			int j=0;
			while (j < Commons.COLNUMBER && getCurrentLevel().getColumns()[i].isEmpty()) {
				i = (i+1) % Commons.COLNUMBER;
				j++;
			}
			if (j < Commons.COLNUMBER) {
				getCurrentLevel().getColumns()[i].shoot(bullet);
				maxPriorityIndex = (maxPriorityIndex+1) % game.getAlienBullets().length;
			
			}
		}
	}
	
	private int maxPriorityIndex = 0; //Array index with max priority, it shifts each time alienShoot succesfully shoots
	private Bullet alienBulletPriorityEncoder() {
		int j = maxPriorityIndex;
		for (int i=0; i<game.getAlienBullets().length; i++) {
			if (!game.getAlienBullets()[j].isVisible())
				return game.getAlienBullets()[j];
			j = (j+1) % game.getAlienBullets().length;
		}
		return null;
	}

	public void reinitializeRandAlien() {
		game.reinitializeRandAlien();		
	}

	public void gameWon() {
		currentLevel = -1;
		canvas.getGraphicsContext2D().drawImage(new Image("file:images/YouWin.png"), 0, 0, canvas.getWidth(), canvas.getHeight());
		canvas.getGraphicsContext2D().setFill(Color.WHITE);
		canvas.getGraphicsContext2D().setFont(Font.font("PerfectLed123"));
		canvas.getGraphicsContext2D().fillText("YOUR SCORE: " + getScore(), 180, 300);
	}

}
