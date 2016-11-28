package point;

public aspect PointUndoer extends Undoer {
	pointcut change() : call(* Point.set*(..));
	
	declare parents : Point implements Undoable;
	
	private static class State {
		public int x;
		public int y;
		State(int x_, int y_) {
			x = x_;
			y = y_;
		}
	}
	
	public Object Point.getState() {
		return new State(x, y);
	}
	
	public void Point.restore(Object o) {
		State s = (State) o;
		x = s.x;
		y = s.y;
	}
}
