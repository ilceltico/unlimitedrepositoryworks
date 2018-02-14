package model;

import java.util.Arrays;

public class SpaceshipType extends EntityType {

	private Sprite[] explosionSprites;
	private int currentSprite;
	private int points;
	
	public SpaceshipType(Sprite[] sprites, Sprite[] explosionSprites, int points, int sizeX, int sizeY) {
		super();
		setSprites(sprites);
		this.explosionSprites = explosionSprites;
		this.points = points;
		setSizeX(sizeX);
		setSizeY(sizeY);
		this.currentSprite = 0;
	}

	public Sprite[] getExplosionSprites() {
		return explosionSprites;
	}

	public Sprite getCurrentSprite() {
		return getSprites()[currentSprite];
	}

	public int getPoints() {
		return points;
	}
	
	public void nextSprite() {
		currentSprite++;
		currentSprite %= getSprites().length; 
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((explosionSprites == null) ? 0 : explosionSprites.hashCode());
		result = prime * result + points;
		result = prime * result + getSizeX();
		result = prime * result + getSizeY();
		result = prime * result + Arrays.hashCode(getSprites());
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
		if (explosionSprites == null) {
			if (other.explosionSprites != null)
				return false;
		} else if (!explosionSprites.equals(other.explosionSprites))
			return false;
		if (points != other.points)
			return false;
		if (getSizeX() != other.getSizeX())
			return false;
		if (getSizeY() != other.getSizeY())
			return false;
		if (!Arrays.equals(getSprites(), other.getSprites()))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "SpaceshipType [sprites=" + Arrays.toString(getSprites()) + ", explosionSprite=" + explosionSprites    
				+ ", points=" + points + ", sizeX=" + getSizeX() + ", sizeY=" + getSizeY() + "]";
	}
	
}
