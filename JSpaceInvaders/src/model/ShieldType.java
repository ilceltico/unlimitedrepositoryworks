package model;

import java.util.Arrays;

public class ShieldType extends EntityType {

	public ShieldType(Sprite[] sprites, int sizeX, int sizeY) {
		super();
		setSprites(sprites);
		setSizeX(sizeX);
		setSizeY(sizeY);
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
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
		ShieldType other = (ShieldType) obj;
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
		return "ShieldType [sprites=" + Arrays.toString(getSprites()) + ", sizeX=" + getSizeX() + ", sizeY=" + getSizeY() + "]";
	}

}
