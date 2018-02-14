package view;

import controller.Controller;
import javafx.animation.AnimationTimer;
import javafx.scene.canvas.GraphicsContext;
import model.Column;
import model.Level;
import model.Spaceship;

public class Animator extends AnimationTimer {
	
	private GraphicsContext gc;
	private Controller controller;
	private long lastNanos = 17000;
	
	public Animator(GraphicsContext gc, Controller controller) {
		super();
		this.gc = gc;
		this.controller = controller;
	}

	@Override
	public void handle(long curNanos) {
		if (curNanos - lastNanos >= 16666667) {
			gc.clearRect(0, 0, gc.getCanvas().getWidth(), gc.getCanvas().getHeight());
			controller.moveAliens();

			Level level = controller.getCurrentLevel();
			Column[] columns = level.getColumns();
			for (int i=0; i<columns.length; i++) {
				Spaceship[] spaceships = columns[i].getSpaceships();
				for (int j=0; j<spaceships.length; j++) {
					gc.drawImage(spaceships[j].getType().getCurrentSprite(), 
							spaceships[j].getHitbox().getUpLeftX(), 
							spaceships[j].getHitbox().getUpLeftY(), 
							spaceships[j].getHitbox().getSizeX(), 
							spaceships[j].getHitbox().getSizeY());
				}
			}
			
			lastNanos = curNanos;	
		}
	}

}
