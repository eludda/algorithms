int linearSearch<T>(List<T> list, T target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) return i;
  }

  return -1;
}
