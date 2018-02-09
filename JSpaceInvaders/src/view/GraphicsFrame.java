package view;

import java.awt.Graphics;

import javax.swing.JFrame;
import javax.swing.JPanel;

public class GraphicsFrame extends JFrame {

	private static final long serialVersionUID = 1L;

	GraphicsPanel p;
	
	public GraphicsFrame() {
		super();
		GraphicsPanel p = new GraphicsPanel(0, 0, 100, 100);
		add(p);
		p.paint(getGraphics());
		GraphicsPanel p1 = new GraphicsPanel(0, 100, 200, 300);
		add(p1);
		p1.paint(getGraphics());
		
		this.setSize(500, 500);
		this.setVisible(true);
	}
	
	public void drawLine(int x1, int y1, int x2, int y2) {
		p.drawLine(getGraphics(), x1, y1, x2, y2);
	}

	class GraphicsPanel extends JPanel{
		
		private static final long serialVersionUID = 1L;
		
		private int x1;
		private int x2;
		private int y1;
		private int y2;
		
		public GraphicsPanel(int x1, int y1, int x2, int y2) { 
			super();
			this.x1 = x1;
			this.y1 = y1;
			this.x2 = x2;
			this.y2 = y2;
		}
		
		@Override
		public void paintComponent(Graphics g) { 
			g.drawLine(x1, y1, x2, y2);
		}
		
		private void drawLine(Graphics g, int x1, int y1, int x2, int y2) {
			g.drawLine(x1, y1, x2, y2);
		}

	}
}
