package utils;

public final class Commons {
	public static final int GRIDWIDTH = 500;
	public static final int GRIDHEIGHT = 500;
	public static final int PLAYERBULLETSNUMBER = 1;
	public static final int COLNUMBER = 11;
	public static final int ROWNUMBER = 5;
	public static final int ALIENWIDTH = 20;
	public static final int ALIENHEIGHT = 20;
	public static final int COLUMNSPACE = 6;
	public static final int ROWSPACE = 15;
	public static final int SIDEMARGIN = 10;
	
	//Player
	public static final int PLAYERWIDTH = 20;
	public static final int PLAYERHEIGHT = 12;
	public static final int PLAYERSTARTX = (GRIDWIDTH-PLAYERWIDTH)/2;
	public static final int PLAYERSTARTY = GRIDHEIGHT - 4*PLAYERHEIGHT;
	public static final int PLAYERLIVES = 1;
	public static final int PLAYERSPEED = 5;
	
	//Alien points
	public static final int ALIEN1POINTS = 10;
	public static final int ALIEN2POINTS = 20;
	public static final int ALIEN3POINTS = 30;
	public static final int ALIEN4POINTS = 1000;
	
	//Levels
	public static final int LEVELNUMBER = 3;
	//LV1
	public static final int FIRSTALIENCELLX = 10;
	public static final int FIRSTALIENCELLY = 30;
	public static final int BASEALIENSPEED = 1; //Aliens will be horizontally moved by this amount of pixels
	public static final int ALIENSPEEDINCREMENT = 1; //Increment to speed every 2 rows down

	
}
