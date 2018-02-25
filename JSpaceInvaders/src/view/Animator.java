package view;

import javafx.scene.paint.Color;
import javafx.scene.text.Font;

import java.util.Random;

import controller.Controller;
import javafx.animation.AnimationTimer;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.paint.Paint;
import model.Bullet;
import model.Column;
import model.Direction;
import model.Level;
import model.Shield;
import model.Spaceship;
import model.SpaceshipType;
import utils.Commons;

public class Animator extends AnimationTimer {
	
	private GraphicsContext gc;
	private Controller controller;
	private long lastNanos = 0;
	private long lastAlienNanos = 0;
	private long lastPlayerBulletNanos = 0;
	private long[] lastAlienBulletNanos = {0, 0, 0};
	private long lastRandAlienNanos = 0;
	private long explosionStart = 0;
	
	private long lastRandAlienGenerationNanos=0;
	private long lastAlienBulletGenerationNanos = 0;
		
	public Animator(GraphicsContext gc, Controller controller) {
		super();
		this.gc = gc;
		this.controller = controller;
	}

	@Override
	public void handle(long curNanos) {
		if (curNanos - lastNanos >= Commons.FRAMETIMENANOS) {
			gc.clearRect(0, 0, gc.getCanvas().getWidth(), gc.getCanvas().getHeight());
			gc.setFill(Color.WHITE);
			gc.setFont(Font.font("serif"));
			gc.fillText("SCORE:"+controller.getScore(), 10, 20);
			gc.fillText("LIVES:"+controller.getPlayerLives(), 400, 20);
			
			int randomInt = new Random().nextInt(600);
			long randomTime = (long) randomInt * 1000000000;

			if (curNanos - lastAlienNanos >= controller.getCurrentLevel().getFrameNanoTime()) {
				controller.moveAliens();
				lastAlienNanos = curNanos;
			}
		
			if (controller.getCurrentLevel().isAlienExploding() && curNanos - explosionStart >= Commons.EXPLOSIONNANOS) {
				for (Column c : controller.getCurrentLevel().getColumns()) {
					for (Spaceship s : c.getSpaceships()) {
							s.move(Direction.NONE, 0);
					}
				}
				controller.getCurrentLevel().setAlienExploding(false);
			}
			
			if (curNanos - lastPlayerBulletNanos >= controller.getPlayerBullet().getFrameNanos()) {
				controller.movePlayerBullet();
				lastPlayerBulletNanos = curNanos;
				if (controller.getPlayerBullet().isExploding())
					controller.getPlayerBullet().exploded();
			}
			
			for (int i=0; i<controller.getAlienBullets().length; i++) {
				if (curNanos - lastAlienBulletNanos[i] >= controller.getAlienBullets()[i].getFrameNanos()) {
					controller.moveAlienBullet(i);
					lastAlienBulletNanos[i] = curNanos;
					if (controller.getAlienBullets()[i].isExploding())
						controller.getAlienBullets()[i].exploded();
				}
			}
			
			
			if(controller.getRandAlien().isVisible()){
				if (curNanos - lastRandAlienNanos >= Commons.RANDALIENFRAMENANOS) {
					controller.moveRandAlien();
					lastRandAlienNanos = curNanos;
				}
			}
			
			if(lastRandAlienGenerationNanos == 0) lastRandAlienGenerationNanos = curNanos;
			else 
				{	if(curNanos - lastRandAlienGenerationNanos>= randomTime) {
					controller.moveRandAlien();
					lastRandAlienGenerationNanos= curNanos;
						}
				}
			
			controller.movePlayer();
			
			
			//Alien Bullets generation
			if (curNanos - lastAlienBulletGenerationNanos >= controller.getAlienBulletGenerationNanos()) {
				controller.alienShoot();
				lastAlienBulletGenerationNanos = curNanos;
			}
						
			Level level = controller.getCurrentLevel();
			Column[] columns = level.getColumns();
			
			//Collision control
			//Aliens to Player, Aliens to ground, Aliens to Shields and PlayerBullet to Aliens
			for (int i=0; i<columns.length; i++) {
				Spaceship[] spaceships = columns[i].getSpaceships();
				for (int j=0; j<spaceships.length; j++) {
					if (spaceships[j].isVisible()) {
						if (controller.getPlayerBullet().isVisible() && 
								!controller.getPlayerBullet().isExploding() && 
								spaceships[j].getHitbox().touches(controller.getPlayerBullet().getHitbox())) {
							explosionStart = curNanos;
							spaceships[j].hit();
							controller.getCurrentLevel().setAlienExploding(true);
							controller.getPlayerBullet().hit();
							controller.getPlayerBullet().exploded();
							controller.UpdateScore(controller.getPointsCount(spaceships[j].getType()));
									
							columns[i].decreaseAlienCount();
							if (controller.decreaseAlienCount() == 0)
								return;		
						}
						if (spaceships[j].getHitbox().touches(controller.getPlayer().getHitbox())) {
							controller.gameOver();
							return;
						}
						if (spaceships[j].getHitbox().getDownRightY() > Commons.GRIDHEIGHT - Commons.SIDEMARGIN) {
							controller.gameOver();
							return;
						}
						for (int k=0; k<controller.getCurrentLevel().getShields().length; k++) {
							if (controller.getCurrentLevel().getShields()[k].isVisible() &&
									controller.getCurrentLevel().getShields()[k].getHitbox().touches(spaceships[j].getHitbox())) {
								controller.getCurrentLevel().getShields()[k].hit();
							}
						}
					}
				}
			}
			//PlayerBullet to RandAlien
			if (controller.getRandAlien().isVisible()) {
				if (controller.getPlayerBullet().isVisible() && 
						!controller.getPlayerBullet().isExploding() && 
						controller.getRandAlien().getHitbox().touches(controller.getPlayerBullet().getHitbox())) {
					explosionStart = curNanos;
					controller.getRandAlien().hit();
					controller.getRandAlien().setVisible(false);
					controller.getPlayerBullet().hit();
					controller.getPlayerBullet().exploded();
					controller.UpdateScore(controller.getPointsCount(controller.getRandAlien().getType()));
										
				}
				 
			}
			//PlayerBullet to top margin
			if (controller.getPlayerBullet().isVisible() &&
					!controller.getPlayerBullet().isExploding() &&
					controller.getPlayerBullet().getHitbox().getUpLeftY() <= Commons.TOPMARGIN)
				controller.getPlayerBullet().hit();
			
			//Rendering aliens
			for (int i=0; i<columns.length; i++) {
				Spaceship[] spaceships = columns[i].getSpaceships();
				for (int j=0; j<spaceships.length; j++) {
					if (spaceships[j].isVisible())
						gc.drawImage(spaceships[j].getCurrentSprite(), 
								spaceships[j].getHitbox().getUpLeftX(), 
								spaceships[j].getHitbox().getUpLeftY(), 
								spaceships[j].getHitbox().getSizeX(), 
								spaceships[j].getHitbox().getSizeY());
				}
			}
			
			//Rendering RandAlien
			if(controller.getRandAlien().isVisible()) {
					gc.drawImage(controller.getRandAlien().getCurrentSprite(), 
							controller.getRandAlien().getHitbox().getUpLeftX(), 
							controller.getRandAlien().getHitbox().getUpLeftY(), 
							controller.getRandAlien().getHitbox().getSizeX(), 
							controller.getRandAlien().getHitbox().getSizeY());
			}
			
			//Rendering shields, PlayerBullet to Shields collision control, 
			//AlienBullets to Shields collision control
			for (int i=0; i<controller.getCurrentLevel().getShields().length; i++) {
				if (controller.getCurrentLevel().getShields()[i].isVisible()) {
					if (controller.getPlayerBullet().isVisible() &&
							!controller.getPlayerBullet().isExploding() &&
							controller.getPlayerBullet().getHitbox().touches(controller.getCurrentLevel().getShields()[i].getHitbox())) {
						controller.getPlayerBullet().hit();
						controller.getCurrentLevel().getShields()[i].hit();
					}
					for (int j=0; j<controller.getAlienBullets().length; j++) {
						if (controller.getAlienBullets()[j].isVisible() &&
								!controller.getAlienBullets()[j].isExploding() &&
								controller.getAlienBullets()[j].getHitbox().touches(controller.getCurrentLevel().getShields()[i].getHitbox())) {
							controller.getAlienBullets()[j].hit();
							controller.getCurrentLevel().getShields()[i].hit();
						}
					}
				}
				if (controller.getCurrentLevel().getShields()[i].isVisible()) {
					gc.drawImage(controller.getCurrentLevel().getShields()[i].getCurrentSprite(),
							controller.getCurrentLevel().getShields()[i].getHitbox().getUpLeftX(),
							controller.getCurrentLevel().getShields()[i].getHitbox().getUpLeftY(),
							controller.getCurrentLevel().getShields()[i].getHitbox().getSizeX(),
							controller.getCurrentLevel().getShields()[i].getHitbox().getSizeY());
				}
			}
			
			//Rendering player
			gc.drawImage(controller.getPlayer().getCurrentSprite(), 
					controller.getPlayer().getHitbox().getUpLeftX(), 
					controller.getPlayer().getHitbox().getUpLeftY(), 
					controller.getPlayer().getHitbox().getSizeX(), 
					controller.getPlayer().getHitbox().getSizeY());
			
			//Rendering bullets
			if (controller.getPlayerBullet().isVisible())
				if (!controller.getPlayerBullet().isExploding()) 
					gc.drawImage(controller.getPlayerBullet().getCurrentSprite(),
							controller.getPlayerBullet().getHitbox().getUpLeftX(),
							controller.getPlayerBullet().getHitbox().getUpLeftY(),
							controller.getPlayerBullet().getHitbox().getSizeX(),
							controller.getPlayerBullet().getHitbox().getSizeY());
				else
					gc.drawImage(controller.getPlayerBullet().getCurrentSprite(),
							controller.getPlayerBullet().getHitbox().getCenterX()-Commons.BULLETEXPLOSIONWIDTH/2,
							controller.getPlayerBullet().getHitbox().getUpLeftY()-Commons.BULLETEXPLOSIONHEIGHT/2,
							Commons.BULLETEXPLOSIONWIDTH,
							Commons.BULLETEXPLOSIONHEIGHT);
			//AlienBullets, AlientBullets to Player, AlienBullets to bottom margin,
			//AlienBullets to PlayerBullet collision control
			for (int i=0; i<controller.getAlienBullets().length; i++) {
				if (controller.getAlienBullets()[i].isVisible() &&
						!controller.getAlienBullets()[i].isExploding() &&
						controller.getAlienBullets()[i].getHitbox().touches(controller.getPlayer().getHitbox())) {
					controller.gameOver();
					return;
				}
				if (controller.getAlienBullets()[i].isVisible() &&
						!controller.getAlienBullets()[i].isExploding() &&
						controller.getAlienBullets()[i].getHitbox().getDownRightY() >= Commons.GRIDHEIGHT - Commons.BOTTOMMARGIN) {
					controller.getAlienBullets()[i].hit();
				}
				if (controller.getAlienBullets()[i].isVisible() &&
						!controller.getAlienBullets()[i].isExploding() &&
						controller.getPlayerBullet().isVisible() &&
						!controller.getPlayerBullet().isExploding() &&
						controller.getAlienBullets()[i].getHitbox().touches(controller.getPlayerBullet().getHitbox())) {
					controller.getAlienBullets()[i].hit();
					controller.getPlayerBullet().hit();
				}
				if (controller.getAlienBullets()[i].isVisible()) {
					if (!controller.getAlienBullets()[i].isExploding()) 
						gc.drawImage(controller.getAlienBullets()[i].getCurrentSprite(),
								controller.getAlienBullets()[i].getHitbox().getUpLeftX(),
								controller.getAlienBullets()[i].getHitbox().getUpLeftY(),
								controller.getAlienBullets()[i].getHitbox().getSizeX(),
								controller.getAlienBullets()[i].getHitbox().getSizeY());
					else
						gc.drawImage(controller.getAlienBullets()[i].getCurrentSprite(),
								controller.getAlienBullets()[i].getHitbox().getCenterX()-Commons.BULLETEXPLOSIONWIDTH/2,
								controller.getAlienBullets()[i].getHitbox().getUpLeftY()-Commons.BULLETEXPLOSIONHEIGHT/2,
								Commons.BULLETEXPLOSIONWIDTH,
								Commons.BULLETEXPLOSIONHEIGHT);
				}
			}
			
			lastNanos = curNanos;	
		}
	}

}
