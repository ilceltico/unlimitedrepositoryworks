package model;

public class Hitbox {
	
	private int upLeftX;
	private int upLeftY;
	private int sizeX;
	private int sizeY;

	public Hitbox(int upLeftX, int upLeftY, int sizeX, int sizeY) {
		super();
		
		if (sizeX < 0 || sizeY < 0)
			throw new IllegalArgumentException("Hitbox size is negative");
		
		this.upLeftX = upLeftX;
		this.upLeftY = upLeftY;
		this.sizeX = sizeX;
		this.sizeY = sizeY;
	}

	public int getUpLeftX() {
		return upLeftX;
	}

	public int getUpLeftY() {
		return upLeftY;
	}

	public int getDownRightX() {
		return sizeX;
	}

	public int getDownRightY() {
		return sizeY;
	}
	
	public void moveOf(int deltaX, int deltaY) {
		this.upLeftX += deltaX;
		this.upLeftY += deltaY;
	}
	
	public void moveOfX(int deltaX) { 
		moveOf(deltaX, 0);
	}
	
	public void moveOfY(int deltaY) {
		moveOf(0, deltaY);
	}
	
	public void moveAt(int upLeftX, int upLeftY) {
		this.upLeftX = upLeftX;
		this.upLeftY = upLeftY;
	}
	
	public void moveAtX(int upLeftX) {
		moveAt(upLeftX, 0);
	}
	
	public void moveAtY(int upLeftY) {
		moveAt(0, upLeftY);
	}
	
	public boolean contains(int x, int y) {
		return upLeftX <= x && 
				upLeftX + sizeX >= x &&
				upLeftY <= y &&
				upLeftY + sizeY >= y;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + sizeX;
		result = prime * result + sizeY;
		result = prime * result + upLeftX;
		result = prime * result + upLeftY;
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
		Hitbox other = (Hitbox) obj;
		if (sizeX != other.sizeX)
			return false;
		if (sizeY != other.sizeY)
			return false;
		if (upLeftX != other.upLeftX)
			return false;
		if (upLeftY != other.upLeftY)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Hitbox [upLeftX=" + upLeftX + ", upLeftY=" + upLeftY + ", sizeX=" + sizeX + ", sizeY=" + sizeY + "]";
	}
	
}
