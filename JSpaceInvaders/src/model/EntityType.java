package model;

import utils.Sprite;

public abstract class EntityType {
	
	private Sprite[] sprites;
	private int sizeX;
	private int sizeY;
	
	public Sprite[] getSprites() {
		return sprites;
	}
	
	protected void setSprites(Sprite[] sprites) {
		this.sprites = sprites;
	}
	
	public int getSizeX() {
		return sizeX;
	}
	
	protected void setSizeX(int sizeX) {
		this.sizeX = sizeX;
	}
	
	public int getSizeY() {
		return sizeY;
	}
	
	protected void setSizeY(int sizeY) {
		this.sizeY = sizeY;
	}

}
