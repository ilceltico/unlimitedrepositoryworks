package model;

import java.util.Arrays;

import javafx.scene.canvas.Canvas;
import utils.Commons;

public class Level {

	private int startingLine;
	private Column[] columns;
	private Shield[] shields;
	private int speed;
	private int speedIncrement;
	private boolean increment = false;
	private Direction curDirection = Direction.RIGHT;
	
	public Level(int startingLine, Column[] columns, Shield[] shields, int baseSpeed, int speedIncrement) {
		super();
		this.startingLine = startingLine;
		this.columns = columns;
		this.shields = shields;
		this.speed = baseSpeed;
		this.speedIncrement = speedIncrement;
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
	
	public void moveAliens(Canvas canvas) {
		boolean touches = false;
		int negativeOvershot = 0;
		boolean right = curDirection==Direction.RIGHT;
		int canvasLimit = right ? 
				((int) canvas.getWidth() - Commons.SIDEMARGIN) : (Commons.SIDEMARGIN);
		for (Column column : columns) {
			for (Spaceship alien : column.getSpaceships()) {
				alien.move(curDirection, speed);
				if (!touches && (right && alien.getHitbox().getDownRightX() > canvasLimit) 
						|| (!right && alien.getHitbox().getUpLeftX() < canvasLimit)) {
					touches = true;
					negativeOvershot = right ? 
							(canvasLimit - alien.getHitbox().getDownRightX()) : 
								(canvasLimit - alien.getHitbox().getUpLeftX());
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
			if (increment)
				speed += speedIncrement;
			else
				increment = true;
		}
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
