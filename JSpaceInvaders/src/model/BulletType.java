package model;

import java.util.Arrays;

import utils.Sprite;

public class BulletType {
	
	private Sprite[] sprites;
	private int speed;
	private int currentSprite;

	public BulletType(Sprite[] sprites, int speed) {
		super();
		this.sprites = sprites;
		this.speed = speed;
		this.currentSprite = 0;
	}

	public Sprite[] getSprites() {
		return sprites;
	}

	public int getSpeed() {
		return speed;
	}

	public int getCurrentSprite() {
		return currentSprite;
	}

	public void nextSprite() {
		currentSprite++;
		currentSprite %= sprites.length; 
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + currentSprite;
		result = prime * result + speed;
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
		BulletType other = (BulletType) obj;
		if (currentSprite != other.currentSprite)
			return false;
		if (speed != other.speed)
			return false;
		if (!Arrays.equals(sprites, other.sprites))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "BulletType [sprites=" + Arrays.toString(sprites) + ", speed=" + speed + ", currentSprite="
				+ currentSprite + "]";
	}

}
