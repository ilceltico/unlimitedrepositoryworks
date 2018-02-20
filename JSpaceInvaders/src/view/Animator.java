package view;

import controller.Controller;
import javafx.animation.AnimationTimer;
import javafx.scene.canvas.GraphicsContext;
import model.Bullet;
import model.Column;
import model.Direction;
import model.Level;
import model.Shield;
import model.Spaceship;
import utils.Commons;

public class Animator extends AnimationTimer {
	
	private GraphicsContext gc;
	private Controller controller;
	private long lastNanos = 0;
	private long lastAlienNanos = 0;
	private long lastPlayerBulletNanos = 0;
	private long explosionStart = 0;
	private int score=0;
	
	public Animator(GraphicsContext gc, Controller controller) {
		super();
		this.gc = gc;
		this.controller = controller;
	}

	@Override
	public void handle(long curNanos) {
		if (curNanos - lastNanos >= Commons.FRAMETIMENANOS) {
			gc.clearRect(0, 0, gc.getCanvas().getWidth(), gc.getCanvas().getHeight());
			
			if (curNanos - lastAlienNanos >= controller.getCurrentLevel().getFrameNanoTime()) {
				controller.moveAliens();
				//controller.moveRandAlien();// put this here in the meantime but of course it's not working
				lastAlienNanos = curNanos;
			}
			if (controller.getCurrentLevel().isAlienExploding() && curNanos - explosionStart >= Commons.EXPLOSIONNANOS) {
				for (Column c : controller.getCurrentLevel().getColumns()) {
					for (Spaceship s : c.getSpaceships()) {
							s.move(Direction.NONE, 0);
					}// &randAlien?
				}
			}
			
			if (curNanos - lastPlayerBulletNanos >= controller.getPlayerBullet().getFrameNanos()) {
				controller.movePlayerBullet();
				lastPlayerBulletNanos = curNanos;
				if (controller.getPlayerBullet().isExploding())
					controller.getPlayerBullet().exploded();
			}
			
			controller.movePlayer();
			
			
			Level level = controller.getCurrentLevel();
			Column[] columns = level.getColumns();
			int points=0;
						
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
							controller.getCurrentLevel().alienExploding();
							controller.getPlayerBullet().hit();
							
							points = controller.getPointsCount(spaceships[j].getType());
							score= score + points;
							//System.out.println("Animator: score "+score);
							
							
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
					controller.getCurrentLevel().alienExploding(); //mi serve?
					controller.getPlayerBullet().hit();
					
					points = controller.getPointsCount(controller.getRandAlien().getType());
					score= score + points;
					//System.out.println("Animator: score "+score);
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
			
			
			//Rendering shields, PlayerBullet to Shields collision control
			for (int i=0; i<controller.getCurrentLevel().getShields().length; i++) {
				if (controller.getCurrentLevel().getShields()[i].isVisible()) {
					if (controller.getPlayerBullet().isVisible() &&
							!controller.getPlayerBullet().isExploding() &&
							controller.getPlayerBullet().getHitbox().touches(controller.getCurrentLevel().getShields()[i].getHitbox())) {
						controller.getPlayerBullet().hit();
						controller.getCurrentLevel().getShields()[i].hit();
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
							controller.getPlayerBullet().getHitbox().getUpLeftX(),
							controller.getPlayerBullet().getHitbox().getUpLeftY(),
							Commons.BULLETEXPLOSIONWIDTH,
							Commons.BULLETEXPLOSIONHEIGHT);
			
			lastNanos = curNanos;	
		}
	}

}
