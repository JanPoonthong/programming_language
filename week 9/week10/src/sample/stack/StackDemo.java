package sample.stack;

public class StackDemo {

	public static void main(String[] args) {
		Worklist w;
		w = new Stack();
		w.add("the plow");
		w.add("forgives ");
		w.add("The cut worm ");
		System.out.print(w.remove());
		System.out.print(w.remove());
		System.out.println(w.remove());
		Stack s = (Stack) w;
		s.test();
	}
}