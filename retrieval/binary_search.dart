int binarySearch(List<Comparable> sorted, Comparable target) {
  int left = 0, right = sorted.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    int cmp = sorted[mid].compareTo(target);

    if (cmp == 0) return mid;
    if (cmp > 0) {
      right = mid - 1;
    } else {
      left = mid + 1;
    }
  }

  return -1;
}
