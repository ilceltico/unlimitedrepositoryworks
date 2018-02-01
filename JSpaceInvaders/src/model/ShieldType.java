package model;

import java.util.Arrays;

import utils.Sprite;

public class ShieldType {
	
	private Sprite[] sprites;
	private int sizeX;
	private int sizeY;

	public ShieldType(Sprite[] sprites, int sizeX, int sizeY) {
		super();
		this.sprites = sprites;
		this.sizeX = sizeX;
		this.sizeY = sizeY;
	}

	public Sprite[] getSprites() {
		return sprites;
	}

	public int getSizeX() {
		return sizeX;
	}

	public int getSizeY() {
		return sizeY;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
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
		ShieldType other = (ShieldType) obj;
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
		return "ShieldType [sprites=" + Arrays.toString(sprites) + ", sizeX=" + sizeX + ", sizeY=" + sizeY + "]";
	}

}
