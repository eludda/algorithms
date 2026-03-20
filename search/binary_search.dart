int binary_search(List<int> sorted, target) {
  var (left, right) = (0, sorted.length - 1);

  while (left <= right) {
    final mid = (left + (right - left) / 2).toInt();

    if (sorted[mid] == target) {
      return mid;
    }

    if (sorted[mid] > target) {
      right = mid - 1;
    } else {
      left = mid + 1;
    }
  }

  return -1;
}

void main() {
  binary_search([1, 3, 6, 13, 16], 6);
}
