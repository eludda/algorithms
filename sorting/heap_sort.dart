void heapSort(List<int> array) {
  int len = array.length;

  for (int i = len ~/ 2 - 1; i >= 0; i--) {
    heapify(array, len, i);
  }

  for (int i = len - 1; i > 0; i--) {
    int temp = array[0];
    array[0] = array[i];
    array[i] = temp;

    heapify(array, i, 0);
  }
}

void heapify(List<int> array, int n, int i) {
  int max = i;
  int left = 2 * i + 1;
  int right = 2 * i + 2;

  if (left < n && array[left] > array[max]) max = left;
  if (right < n && array[right] > array[max]) max = right;

  if (max != i) {
    int temp = array[i];
    array[i] = array[max];
    array[max] = temp;

    heapify(array, n, max);
  }
}
