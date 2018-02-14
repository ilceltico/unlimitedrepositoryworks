package model;

public class Player extends Spaceship{

	private int lives;
	private int speed;
	
	public Player(SpaceshipType type, int upLeftX, int upLeftY, int lives, int speed) {
		super(type, upLeftX, upLeftY);
		this.lives = lives;
		this.speed = speed;
	}
	
	public void move(Direction direction) {
		super.move(direction, speed);
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
