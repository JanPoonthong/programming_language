// Jan Poonthong, 6511286

package sample.queue;

public class Queue<T> implements Worklist<T> {
    protected Node<T> head = null;
    @Override
    public void add(T item) {
        head = new Node<T>(item, head);
    }

    @Override
    public boolean hasMore() {
        return head.getLink() != null;
    }

    @Override
    public T remove() {
        Node<T> temp = head;
        Node<T> pre;
        if (head.getLink() == null) {
            return head.getData();
        }
        do {
            pre = temp;
            temp = temp.getLink();
        } while (temp.getLink() != null);
        pre.setLink(null);
        return temp.getData();
    }
}
