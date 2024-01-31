// Jan Poonthong, 6511286
package sample.queue;

public class WorklistDriver {

    public static void main(String[] args) {
        Queue<Integer> queue = new Queue<Integer>();
        queue.add(4);
        queue.add(7);
        queue.add(11);
        System.out.println(queue.hasMore());
        System.out.println(queue.remove());
        System.out.println(queue.remove());
        System.out.println(queue.remove());

        Worklist<String> qqueue = new Queue<String>();
        qqueue.add("Happy");
        qqueue.add("Chinese");
        qqueue.add("New Year");
        System.out.println(qqueue.remove());
        System.out.println(qqueue.remove());
        System.out.println(qqueue.remove());
    }
}
