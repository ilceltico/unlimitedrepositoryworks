package model;

import java.util.Arrays;

public class Level {

	private int statingLine;
	private int rowCount;
	private Column[] columns;
	private Shield[] shields;
	
	public Level(int statingLine, int rowCount, Column[] columns, Shield[] shields) {
		super();
		this.statingLine = statingLine;
		this.rowCount = rowCount;
		this.columns = columns;
		this.shields = shields;
	}

	public int getStatingLine() {
		return statingLine;
	}

	public int getRowCount() {
		return rowCount;
	}

	public Column[] getColumns() {
		return columns;
	}

	public Shield[] getShields() {
		return shields;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(columns);
		result = prime * result + rowCount;
		result = prime * result + Arrays.hashCode(shields);
		result = prime * result + statingLine;
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
		Level other = (Level) obj;
		if (!Arrays.equals(columns, other.columns))
			return false;
		if (rowCount != other.rowCount)
			return false;
		if (!Arrays.equals(shields, other.shields))
			return false;
		if (statingLine != other.statingLine)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Level [statingLine=" + statingLine + ", rowCount=" + rowCount + ", columns=" + Arrays.toString(columns)
				+ ", shields=" + Arrays.toString(shields) + "]";
	}
	
}
