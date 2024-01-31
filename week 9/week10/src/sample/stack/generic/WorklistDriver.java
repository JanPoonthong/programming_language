package sample.stack.generic;

import sample.queue.Worklist;

public class WorklistDriver {

	public static void main(String[] args) {
		Worklist<Integer> iStack = new Stack<Integer>();
		iStack.add(4);
		iStack.add(7);
		iStack.add(11);
		System.out.println(iStack.remove());
		System.out.println(iStack.remove());

		Worklist<String> sStack = new Stack<String>();
		sStack.add("Happy");
		sStack.add("Chinese");
		sStack.add("New Year");
	}

}
