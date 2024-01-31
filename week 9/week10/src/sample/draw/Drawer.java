package sample.draw;

public class Drawer {

	public static void main(String[] args) {
		
	}
	
	public static void flashoff(Drawable d, int k) {
		for (int i = 0; i < k; i++) {
			d.show(0, 0);
			d.hide();
		}
	}

	public static void resize(Scalable s, double ratio) {
		
	}
}
