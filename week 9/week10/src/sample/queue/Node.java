// Jan Poonthong, 6511286

package sample.queue;

public class Node<T> {
    private T data;
    private Node<T> link;

    public Node(T theData, Node<T> theLink) {
        data = theData;
        link = theLink;
    }

    public T getData() {
        return data;
    }

    public void setLink(Node<T> set) {
        link = set;
    }
    public Node<T> getLink() {
        return link;
    }
}
