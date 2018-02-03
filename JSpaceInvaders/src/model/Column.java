package model;

import java.util.Arrays;

public class Column {

	private Spaceship[] spaceships;

	public Column(Spaceship[] spaceships) {
		super();
		this.spaceships = spaceships;
	}

	public Spaceship[] getSpaceships() {
		return spaceships;
	}

	public Bullet shoot(BulletType type) {
		int first = spaceships.length - 1;
		
		while(spaceships[first] == null)
			first--;
		
		return (first >= 0) ? spaceships[first].shoot(type) : null;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(spaceships);
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
		Column other = (Column) obj;
		if (!Arrays.equals(spaceships, other.spaceships))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Column [spaceships=" + Arrays.toString(spaceships) + "]";
	}
	
}
