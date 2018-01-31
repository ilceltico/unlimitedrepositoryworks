package model;

import java.util.Arrays;

import utils.Sprite;

public class SpaceshipType {

	private Sprite[] sprites;
	private Sprite explosionSprite;
	private int currentSprite;
	private int points;
	private int sizeX;
	private int sizeY;
	
	public SpaceshipType(Sprite[] sprites, Sprite explosionSprite, int points, int sizeX, int sizeY) {
		super();
		this.sprites = sprites;
		this.explosionSprite = explosionSprite;
		this.points = points;
		this.sizeX = sizeX;
		this.sizeY = sizeY;
		this.currentSprite = 0;
	}

	public Sprite[] getSprites() {
		return sprites;
	}

	public Sprite getExplosionSprite() {
		return explosionSprite;
	}

	public int getCurrentSprite() {
		return currentSprite;
	}

	public int getPoints() {
		return points;
	}

	public int getSizeX() {
		return sizeX;
	}

	public int getSizeY() {
		return sizeY;
	}
	
	public void nextSprite() {
		currentSprite++;
		currentSprite %= sprites.length; 
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((explosionSprite == null) ? 0 : explosionSprite.hashCode());
		result = prime * result + points;
		result = prime * result + sizeX;
		result = prime * result + sizeY;
		result = prime * result + Arrays.hashCode(sprites);
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
		SpaceshipType other = (SpaceshipType) obj;
		if (explosionSprite == null) {
			if (other.explosionSprite != null)
				return false;
		} else if (!explosionSprite.equals(other.explosionSprite))
			return false;
		if (points != other.points)
			return false;
		if (sizeX != other.sizeX)
			return false;
		if (sizeY != other.sizeY)
			return false;
		if (!Arrays.equals(sprites, other.sprites))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "SpaceshipType [sprites=" + Arrays.toString(sprites) + ", explosionSprite=" + explosionSprite
				+ ", points=" + points + ", sizeX=" + sizeX + ", sizeY=" + sizeY + "]";
	}
	
}
