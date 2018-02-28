package model;

import utils.Commons;

public class Bullet {
	
	private BulletType type; 
	private Hitbox hitbox;
	private boolean visible;
	private boolean exploding;
	
	public Bullet(BulletType type, int upLeftX, int upLeftY) {
		super();
		this.type = type;
		this.hitbox = new Hitbox(upLeftX, upLeftY, type.getSizeX(), type.getSizeY());
		this.visible = false;
	}

	public BulletType getType() {
		return type;
	}

	public Hitbox getHitbox() {
		return hitbox;
	}
	
	public void setCenterPosition(int x, int y) {
		hitbox.moveTo(x - hitbox.getSizeX()/2, y - hitbox.getSizeY()/2);
	}
	
	public boolean isVisible() {
		return visible;
	}
	
	public void hit() {
		exploding = true;
	}
	
	public boolean isExploding() {
		return exploding;
	}
	
	public void exploded() {
		exploding = false;
		visible = false;
	}
	
	public void setVisible() {
		this.visible = true;
	}
	
	public Sprite getCurrentSprite() {
		if (!exploding)
			return type.getCurrentSprite();
		else
			return type.getExplodingSprite();
	}
	
	public long getFrameNanos() {
		if (!exploding)
			return type.getFrameNanos();
		else
			return Commons.BULLETEXPLOSIONNANOS;
	}

	public void move(Direction direction) {
		switch(direction) { 
		case UP: hitbox.moveY(-type.getSpeed()); break;
		case DOWN: hitbox.moveY(type.getSpeed()); break;
		default: throw new IllegalArgumentException("Bullet can only go up or down");
		}
		type.nextSprite();
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((hitbox == null) ? 0 : hitbox.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
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
		Bullet other = (Bullet) obj;
		if (hitbox == null) {
			if (other.hitbox != null)
				return false;
		} else if (!hitbox.equals(other.hitbox))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Bullet [type=" + type + ", hitbox=" + hitbox + "]";
	}

}
