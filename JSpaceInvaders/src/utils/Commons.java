package utils;

public final class Commons {
	public static final int GRIDWIDTH = 500;
	public static final int GRIDHEIGHT = 500;
	public static final int COLNUMBER = 11;
	public static final int ROWNUMBER = 5;
	public static final int ALIENWIDTH = 20;
	public static final int ALIENHEIGHT = 20;
	public static final int COLUMNSPACE = 6;
	public static final int ROWSPACE = 15;
	public static final int SIDEMARGIN = 10;
	public static final long FRAMETIMENANOS = 16666667;
	
	//Player
	public static final int PLAYERWIDTH = 20;
	public static final int PLAYERHEIGHT = 12;
	public static final int PLAYERSTARTX = (GRIDWIDTH-PLAYERWIDTH)/2;
	public static final int PLAYERSTARTY = GRIDHEIGHT - 4*PLAYERHEIGHT;
	public static final int PLAYERLIVES = 1;
	public static final int PLAYERSPEED = 5;
	
	//Bullets
	public static final int ALIENBULLETFPS = 25;
	public static final int ALIENBULLETSPEED = 3;
	public static final int ALIENBULLETWIDTH = 3;
	public static final int ALIENBULLETHEIGHT = 10;
	public static final int PLAYERBULLETFPS = 60;
	public static final int PLAYERBULLETSPEED = 4;
	public static final int PLAYERBULLETWIDTH = 3;
	public static final int PLAYERBULLETHEIGHT = 8;
	
	//Alien points
	public static final int ALIEN1POINTS = 10;
	public static final int ALIEN2POINTS = 20;
	public static final int ALIEN3POINTS = 30;
	public static final int ALIEN4POINTS = 300;
	
	//Levels
	public static final int LEVELNUMBER = 3;
	//LV1
	public static final int FIRSTALIENCELLX = 10;
	public static final int FIRSTALIENCELLY = 30;
	public static final int ALIENSPEED = 10; //Aliens will be horizontally moved by this amount of pixels
	public static final int BASEFPS = 1; //Frames for aliens will be generated using this rate
	public static final int FPSINCREASE = 1; //FPS increase each time an alien gets destroyed

	
}
