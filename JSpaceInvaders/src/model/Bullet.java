package model;

public class Bullet {
	
	private BulletType type;
	private Hitbox hitbox;
	
	public Bullet(BulletType type, int upLeftX, int upLeftY) {
		super();
		this.type = type;
		this.hitbox = new Hitbox(upLeftX, upLeftY, type.getSizeX(), type.getSizeY());
	}

	public BulletType getType() {
		return type;
	}

	public Hitbox getHitbox() {
		return hitbox;
	}

	public void move(Direction direction) {
		switch(direction) { 
		case UP: hitbox.moveY(type.getSpeed());
		case DOWN: hitbox.moveY(-type.getSpeed());
		case RIGHT: hitbox.moveX(type.getSpeed());
		case LEFT: hitbox.moveX(-type.getSpeed());
		}
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
