class Node implements Comparable<Node> {
  @override
  int compareTo(Node other) {
    throw UnimplementedError();
  }
}

class AStar {
  final List<List<int>> grid;

  late final int rows;
  late final int cols;

  AStar(this.grid);
}
