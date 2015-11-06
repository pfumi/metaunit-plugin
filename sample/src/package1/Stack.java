package package1;

import java.util.LinkedList;
import java.util.List;

public class Stack<E> {
    private final int maxSize;
    private final List<E> stack;

    public Stack(int size) {
        stack = new LinkedList<E>();
        maxSize = size;
    }

    public int size() {
        return stack.size();
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public void push(E element) throws StackOverflowError, IllegalArgumentException {
        if (element == null) {
            throw new IllegalArgumentException("Null not permitted");
        }
        if (size() == maxSize) {
            throw new StackOverflowError("Stack is full");
        }
        stack.add(element);
    }

    public E pop() {
        if (isEmpty()) {
            return null;
        }
        E elem = stack.remove(size() - 1);
        return elem;
    }

    public E peek() {
        if (isEmpty()) {
            return null;
        }
        return stack.get(size()-1);
    }
}