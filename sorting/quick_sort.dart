void quickSort(List<int> array, [int left = 0, int? right]) {
  right ??= array.length - 1;
  if (left >= right) return;

  int i = left, j = right;
  int pivot = array[(left + right) ~/ 2];

  while (i <= j) {
    while (array[i] < pivot) i++;
    while (array[j] > pivot) j--;

    if (i <= j) {
      int temp = array[i];
      array[i] = array[j];
      array[j] = temp;

      i++;
      j--;
    }
  }

  quickSort(array, left, j);
  quickSort(array, i, right);
}
