package test;

import point.Point;

public class PointTest {
	public static void print(Point p) {
		System.out.println(p.getX() + " " + p.getY());
	}
	
	public static void main(String[] args) {
		Point p = new Point(1, 1); // 1
		p.set(2, 2); // 2
		p.set(3, 3); // 3
		
		p.undo(); // 2
		print(p);
		
		p.undo(); // 1
		print(p);
		
		p.undo(); // 1
		print(p);
		
		p.redo(); // 2
		print(p);
		
		p.redo(); // 3
		print(p);
		
		p.redo(); // 3
		print(p);
		
		p.undo(); // 2
		p.undo(); // 1
		p.set(4, 4); // 4
		
		p.undo(); // 1
		print(p);
		
		p.redo(); // 4
		print(p);
		
		p.redo(); // 4
		print(p);
	}
}
