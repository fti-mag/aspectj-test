package point;

public class Point implements Cloneable {
	protected int x;
	protected int y;
	
	public Point() {
		set(0, 0);
	}
	
	public Point(int x_, int y_) {
		set(x_, y_);
	}
	
	public int getX() {
		return x;
	}
	
	public int getY() {
		return y;
	}
	
	public void setX(int x_) {
		x = x_;
	}
	
	public void setY(int y_) {
		y = y_;
	}
	
	public void set(int x_, int y_) {
		x = x_;
		y = y_;
	}
}
