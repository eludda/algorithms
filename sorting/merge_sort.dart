void mergeSort(List<int> array, [int left = 0, int? right]) {
  right ??= array.length - 1;
  if (left >= right) return;

  int mid = left + (right - left) ~/ 2;

  mergeSort(array, left, mid);
  mergeSort(array, mid + 1, right);
  merge(array, left, mid, right);
}

void merge(List<int> array, int left, int mid, int right) {
  List<int> temp = List.filled(right - left + 1, 0);
  int i = left, j = mid + 1, k = 0;

  while (i <= mid && j <= right) {
    if (array[i] <= array[j]) {
      temp[k++] = array[i++];
    } else {
      temp[k++] = array[j++];
    }
  }

  while (i <= mid)   temp[k++] = array[i++];
  while (j <= right) temp[k++] = array[j++];

  for (int l = 0; l < k; l++) {
    array[left + l] = temp[l];
  }
}
