package model;

import java.util.Arrays;

import javafx.scene.canvas.Canvas;
import program.Game;
import utils.Commons;

public class Level {

	private int startingLine;
	private Column[] columns;
	private Shield[] shields;
	private int alienSpeed;
	private int alienFps;
	private int alienFpsIncrement;
	private boolean increment = false;
	private Direction curDirection = Direction.RIGHT;
	
	public Level(int startingLine, Column[] columns, Shield[] shields, int alienSpeed, int baseAlienFps, int alienFpsIncrement) {
		super();
		this.startingLine = startingLine;
		this.columns = columns;
		this.shields = shields;
		this.alienSpeed = alienSpeed;
		this.alienFps = baseAlienFps;
		this.alienFpsIncrement = alienFpsIncrement;
	}

	public int getStatingLine() {
		return startingLine;
	}

	public Column[] getColumns() {
		return columns;
	}

	public Shield[] getShields() {
		return shields;
	}
	
	public long getFrameNanoTime() {
		return (long) 1000000000/(long) alienFps;
	}
	
	public void moveAliens(Canvas canvas) {
		boolean touches = false;
		int negativeOvershot = 0;
		int temp;
		boolean right = curDirection==Direction.RIGHT;
		int canvasLimit = right ? 
				(Commons.GRIDWIDTH - Commons.SIDEMARGIN) : (Commons.SIDEMARGIN);
		for (Column column : columns) {
			for (Spaceship alien : column.getSpaceships()) {
				alien.move(curDirection, alienSpeed);
				if ((right && alien.getHitbox().getDownRightX() > canvasLimit
						|| !right && alien.getHitbox().getUpLeftX() < canvasLimit)) {
					touches = true;
					temp = right ? 
							(canvasLimit - alien.getHitbox().getDownRightX()) : 
								(canvasLimit - alien.getHitbox().getUpLeftX());
					negativeOvershot = Math.abs(temp)>Math.abs(negativeOvershot)?
											temp:negativeOvershot;
				}
			}
		}
		if (touches) {
			for (Column column : columns) {
				for (Spaceship alien : column.getSpaceships()) {
					alien.getHitbox().move(negativeOvershot, Commons.ROWSPACE);
				}
			}
			if (curDirection == Direction.RIGHT)
				curDirection = Direction.LEFT;
			else
				curDirection = Direction.RIGHT;
//			if (increment)
//				speed += speedIncrement;
//			else
//				increment = true;
		}
		
		//Change sprite
		Game.getGame().changeAlienSprites();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(columns);
		result = prime * result + Arrays.hashCode(shields);
		result = prime * result + startingLine;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Level other = (Level) obj;
		if (!Arrays.equals(columns, other.columns))
			return false;
		if (!Arrays.equals(shields, other.shields))
			return false;
		if (startingLine != other.startingLine)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Level [statingLine=" + startingLine + ", columns=" + Arrays.toString(columns)
				+ ", shields=" + Arrays.toString(shields) + "]";
	}
	
}
