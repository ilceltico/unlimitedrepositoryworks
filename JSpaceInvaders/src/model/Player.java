package model;

public class Player extends Spaceship{

	private int lives;
	
	public Player(SpaceshipType type, int upLeftX, int upLeftY, int lives) {
		super(type, upLeftX, upLeftY);
		this.lives = lives;
	}

	public int getLives() {
		return lives;
	}

	public void setLives(int lives) {
		this.lives = lives;
	}
	
}
