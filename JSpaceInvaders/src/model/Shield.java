package model;

public class Shield {
	
	private Hitbox hitbox;
	private ShieldType type;
	private int durability;
	
	public Shield(ShieldType type, int upLeftX, int upLeftY) {
		super();
		this.hitbox = new Hitbox(upLeftX, upLeftY, type.getSizeX(), type.getSizeY());
		this.type = type;
		this.durability = type.getSprites().length;
	}

	public Hitbox getHitbox() {
		return hitbox;
	}

	public int getDurability() {
		return durability;
	}
	
	public ShieldType getType() {
		return type;
	}
	
	public void hit() {
		if (durability > 0)
			durability--;
	}
	
	public Sprite getCurrentSprite() {
		return type.getSprites()[durability - 1];
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + durability;
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
		Shield other = (Shield) obj;
		if (durability != other.durability)
			return false;
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
		return "Shield [hitbox=" + hitbox + ", type=" + type + ", durability="
				+ durability + "]";
	}
	
}
