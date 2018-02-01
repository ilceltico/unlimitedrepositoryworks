package model;

public class Spaceship {

	private SpaceshipType type;
	private Hitbox hitbox;
	
	public Spaceship(SpaceshipType type, int upLeftX, int upLeftY) {
		super();
		this.type = type;
		this.hitbox = new Hitbox(upLeftX, upLeftY, type.getSizeX(), type.getSizeY());
	}
	
	public SpaceshipType getType() {
		return type;
	}

	public Hitbox getHitbox() {
		return hitbox;
	}

	public void move(Direction direction, int speed) {
		switch(direction) { 
		case UP: hitbox.moveOfY(speed);
		case DOWN: hitbox.moveOfY(speed);
		case RIGHT: hitbox.moveOfX(speed);
		case LEFT: hitbox.moveOfX(speed);
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
