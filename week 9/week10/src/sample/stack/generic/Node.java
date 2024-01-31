package sample.stack.generic;

/**
 * A Node is an object that holds a String and a link
 * to the next Node.  It can be used to build linked
 * lists of Strings.
 */
public class Node<T> {
  private T data; // Each node has a String...
  private Node<T> link;   // ...and a link to the next Node

  /**
   * Node constructor.
   * @param theData the String to store in this Node
   * @param theLink a link to the next Node
   */
  public Node(T theData, Node<T> theLink) {
    data = theData;
    link = theLink;
  }
  
  /**
   * Accessor for the String data stored in this Node.
   * @return our String item
   */
  public T getData() {
    return data;
  }
  
  /**
   * Accessor for the link to the next Node.
   * @return the next Node
   */
  public Node<T> getLink() {
    return link;
  }
}
