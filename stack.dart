class Stack<T> {
  final List<T> items = [];

  void push(T item) => items.add(item);
  T pop() => items.removeLast();
  T peek() => items.last;

  bool get isEmpty => items.isEmpty;
  int get length => items.length;
}
