package point;

import java.util.Vector;

abstract public aspect Undoer {
	
	abstract pointcut change();
	
	abstract public Object Undoable.getState();
	abstract public void Undoable.restore(Object s);
	
	private Vector Undoable.history = new Vector();
	private int Undoable.hpos = -1;
	
	private void Undoable.store() {
		hpos += 1;
		history.setSize(hpos + 1);
		history.set(hpos, getState());
	}
	
	after(Undoable u) returning : change() && target(u) {
		u.store();
	}
	
	public void Undoable.undo() {
		if(hpos > 0) {
			hpos -= 1;
			restore(history.get(hpos));
		}
	}
	
	public void Undoable.redo() {
		if(hpos < history.size() - 1) {
			hpos += 1;
			restore(history.get(hpos));
		}
	}
}
