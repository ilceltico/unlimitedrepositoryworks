package model;

public class Spaceship {

	private SpaceshipType type;
	private Hitbox hitbox;
	private boolean visible;
	private boolean exploding;
	
	public Spaceship(SpaceshipType type, int upLeftX, int upLeftY) {
		super();
		this.type = type;
		this.hitbox = new Hitbox(upLeftX, upLeftY, type.getSizeX(), type.getSizeY());
		this.visible = true;
		this.exploding = false;
	}
	
	public SpaceshipType getType() {
		return type;
	}

	public Hitbox getHitbox() {
		return hitbox;
	}
	
	public boolean isVisible() {
		return visible;
	}
	
	public void setVisible(boolean set) {
		this.visible= set;
	}
	
	public void hit() {
		exploding = true;
	}
	
	public Sprite getCurrentSprite() {
		if (!exploding)
			return type.getCurrentSprite();
		else {
			return type.getExplosionSprites()[0];
		}
	}

	public void move(Direction direction, int speed) {
		if (exploding) {
			exploding = false;
			visible = false;
		}
		switch(direction) { 
		case NONE: break;
		case UP: hitbox.moveY(-speed); break;
		case DOWN: hitbox.moveY(speed); break;
		case RIGHT: hitbox.moveX(speed); break;
		case LEFT: hitbox.moveX(-speed); break;
		}
	}
	
	public Bullet shoot(BulletType type) { 
		return new Bullet(type, hitbox.getCenterX() - type.getSizeX() / 2, hitbox.getCenterY() - type.getSizeY() / 2);
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
		Spaceship other = (Spaceship) obj;
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
		return "Spaceship [type=" + type + ", hitbox=" + hitbox + "]";
	}
	
	
	
}
