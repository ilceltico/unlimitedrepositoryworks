package model;

import java.util.Arrays;

public class BulletType extends EntityType {
	
	private int speed;
	private int currentSprite;

	public BulletType(Sprite[] sprites, int speed, int sizeX, int sizeY) {
		super();
		setSprites(sprites);
		this.speed = speed;
		this.currentSprite = 0;
		setSizeX(sizeX);
		setSizeY(sizeY);
	}

	public int getSpeed() {
		return speed;
	}

	public int getCurrentSprite() {
		return currentSprite;
	}
	
	public void nextSprite() {
		currentSprite++;
		currentSprite %= getSprites().length; 
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + getSizeX();
		result = prime * result + getSizeY();
		result = prime * result + speed;
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
		BulletType other = (BulletType) obj;
		if (getSizeX() != other.getSizeX())
			return false;
		if (getSizeY() != other.getSizeY())
			return false;
		if (speed != other.speed)
			return false;
		if (!Arrays.equals(getSprites(), other.getSprites()))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "BulletType [sprites=" + Arrays.toString(getSprites()) + ", speed=" + speed + ", currentSprite="
				+ currentSprite + ", sizeX=" + getSizeX() + ", sizeY=" + getSizeY() + "]";
	}

}
