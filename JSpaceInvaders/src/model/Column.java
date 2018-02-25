package model;

import java.util.Arrays;

public class Column {

	private Spaceship[] spaceships;
	private int spaceshipsCount;
	
	public Column(Spaceship[] spaceships) {
		super();
		this.spaceships = spaceships;
		this.spaceshipsCount = spaceships.length;
	}

	public Spaceship[] getSpaceships() {
		return spaceships;
	}
	
	public boolean shoot(Bullet bullet) {
		int first = spaceships.length - 1;
		
		while(spaceships[first].isVisible() == false && first >= 0)
			first--;
		
		if (first >= 0) {
			spaceships[first].shoot(bullet);
			return true;
		}
		else
			return false;
	}
	
	public boolean isEmpty() {
		return spaceshipsCount==0;
	}
	
	public void decreaseAlienCount() {
		spaceshipsCount--;
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
