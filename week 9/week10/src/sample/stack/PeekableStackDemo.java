package sample.stack;

public class PeekableStackDemo {

	public static void main(String[] args) {
		Stack s1 = new PeekableStack();
		PeekableStack s2 = new PeekableStack();
		s1.add("drive");
		s2.add("cart");
		System.out.println(s2.peek());
		
		doSomething(s1);
		doSomething(s2);
	}
	
	public static void doSomething(Worklist w) {
		System.out.println(w.remove());
	}

}
