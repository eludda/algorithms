void heapSort(List<int> array) {
  int size = array.length;

  for (int i = size ~/ 2 - 1; i >= 0; i--) {
    heapify(array, size, i);
  }

  for (int i = size - 1; i > 0; i--) {
    int temp = array[0];
    array[0] = array[i];
    array[i] = temp;

    heapify(array, i, 0);
  }
}

void heapify(List<int> array, int size, int i) {
  int max = i;
  int left = 2 * i + 1;
  int right = 2 * i + 2;

  if (left < size && array[left] > array[max]) max = left;
  if (right < size && array[right] > array[max]) max = right;

  if (max != i) {
    int temp = array[i];
    array[i] = array[max];
    array[max] = temp;

    heapify(array, size, max);
  }
}
