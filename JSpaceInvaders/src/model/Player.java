package model;

import utils.Commons;

public class Player extends Spaceship{

	private int lives;
	private int speed;
	
	public Player(SpaceshipType type, int upLeftX, int upLeftY, int lives, int speed) {
		super(type, upLeftX, upLeftY);
		this.lives = lives;
		this.speed = speed;
	}
	
	public void move(Direction direction) {
		switch (direction) {
			case NONE: break;
			case LEFT: break;
			case RIGHT: break;
			default: throw new IllegalArgumentException("Invalid direction for player");
		}
		
		int oldUpLeftX = getHitbox().getUpLeftX();
		int oldUpLeftY = getHitbox().getUpLeftY();
		super.move(direction, speed);
		if (this.getHitbox().getDownRightX() >= Commons.GRIDWIDTH-Commons.SIDEMARGIN ||
				this.getHitbox().getUpLeftX() <= Commons.SIDEMARGIN)
			this.getHitbox().moveTo(oldUpLeftX, oldUpLeftY);
		
		if (direction == Direction.NONE) {
			currentExplosionIndex = (currentExplosionIndex + 1) % super.getType().getExplosionSprites().length;
		}
	}

	public int getLives() {
		return lives;
	}

	public void setLives(int lives) {
		this.lives = lives;
	}
	
	public int getSpeed() {
		return speed;
	}
	
	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
}
