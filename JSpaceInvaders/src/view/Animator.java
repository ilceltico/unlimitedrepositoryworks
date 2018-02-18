package view;

import controller.Controller;
import javafx.animation.AnimationTimer;
import javafx.scene.canvas.GraphicsContext;
import model.Column;
import model.Direction;
import model.Level;
import model.Spaceship;
import utils.Commons;

public class Animator extends AnimationTimer {
	
	private GraphicsContext gc;
	private Controller controller;
	private long lastNanos = 0;
	private long lastAlienNanos = 0;
	private long lastPlayerBulletNanos = 0;
	private long explosionStart = 0;
	
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
				lastAlienNanos = curNanos;
			}
			if (controller.getCurrentLevel().isAlienExploding() && curNanos - explosionStart >= Commons.EXPLOSIONNANOS) {
				for (Column c : controller.getCurrentLevel().getColumns()) {
					for (Spaceship s : c.getSpaceships()) {
							s.move(Direction.NONE, 0);
					}
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
			
			//Collision control
			//Aliens to Player and PlayerBullet to Aliens
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
							if (controller.decreaseAlienCount() == 0)
								return;		
						}
						if (spaceships[j].getHitbox().touches(controller.getPlayer().getHitbox())) {
							controller.gameOver();
							return;
						}
					}
				}
			}
			//PlayerBullet to top margin
			if (controller.getPlayerBullet().isVisible() &&
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
