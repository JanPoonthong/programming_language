// Jan Poonthong, 6511286

package sample.queue;

/**
 * 
 * An interface for collections of Strings.
 */
public interface Worklist<T> {
  /**
   * Add one String to the worklist.
   * @param item the String to add
   */
  void add(T item);

  /**
   * Test whether there are more elements in the
   * worklist; that is, test whether more elements have
   * been added than have been removed.
   * @return true if there are more elements
   */
  boolean hasMore();

  /**
   * Remove one String from the worklist and return it.
   * There must be at least one element in the worklist.
   * @return the String item removed
   */
  T remove();
}
