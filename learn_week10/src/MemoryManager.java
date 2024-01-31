import java.util.Arrays;

public class MemoryManager {
    public int[] memory;

    public MemoryManager(int[] initialMemory) {
        memory = initialMemory;
    }

    public static void main(String[] args) {
        int[] b = new int[100];
        b[0] = 1;
        MemoryManager a = new MemoryManager(b);
        System.out.println(Arrays.toString(a.memory));
    }
}