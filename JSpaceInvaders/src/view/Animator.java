package view;

import controller.Controller;
import javafx.animation.AnimationTimer;
import javafx.scene.canvas.GraphicsContext;
import model.Column;
import model.Level;
import model.Spaceship;
import utils.Commons;

public class Animator extends AnimationTimer {
	
	private GraphicsContext gc;
	private Controller controller;
	private long lastNanos = 0;
	private long lastAlienNanos = 0;
	
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
			
			controller.movePlayer();
			controller.movePlayerBullet();
			
			Level level = controller.getCurrentLevel();
			Column[] columns = level.getColumns();
			
			//Collision control
			//Aliens to Player and PlayerBullet to Aliens
			for (int i=0; i<columns.length; i++) {
				Spaceship[] spaceships = columns[i].getSpaceships();
				for (int j=0; j<spaceships.length; j++) {
					if (spaceships[j].isVisible()) {
						if (controller.getPlayerBullet().isVisible() && spaceships[j].getHitbox().touches(controller.getPlayerBullet().getHitbox())) {
							spaceships[j].setVisible(false);
							controller.getPlayerBullet().setVisible(false);
						}
						if (spaceships[j].getHitbox().touches(controller.getPlayer().getHitbox())) {
							controller.gameOver();
							this.stop();
							return;
						}
					}
				}
			}
			//PlayerBullet to Aliens
			
			//Rendering aliens
			for (int i=0; i<columns.length; i++) {
				Spaceship[] spaceships = columns[i].getSpaceships();
				for (int j=0; j<spaceships.length; j++) {
					if (spaceships[j].isVisible())
						gc.drawImage(spaceships[j].getType().getCurrentSprite(), 
								spaceships[j].getHitbox().getUpLeftX(), 
								spaceships[j].getHitbox().getUpLeftY(), 
								spaceships[j].getHitbox().getSizeX(), 
								spaceships[j].getHitbox().getSizeY());
				}
			}
			
			//Rendering player
			gc.drawImage(controller.getPlayer().getType().getCurrentSprite(), 
					controller.getPlayer().getHitbox().getUpLeftX(), 
					controller.getPlayer().getHitbox().getUpLeftY(), 
					controller.getPlayer().getHitbox().getSizeX(), 
					controller.getPlayer().getHitbox().getSizeY());
			
			//Rendering bullets
			if (controller.getPlayerBullet().isVisible())
				gc.drawImage(controller.getPlayerBullet().getType().getCurrentSprite(),
						controller.getPlayerBullet().getHitbox().getUpLeftX(),
						controller.getPlayerBullet().getHitbox().getUpLeftY(),
						controller.getPlayerBullet().getHitbox().getSizeX(),
						controller.getPlayerBullet().getHitbox().getSizeY());
			
			lastNanos = curNanos;	
		}
	}

}
