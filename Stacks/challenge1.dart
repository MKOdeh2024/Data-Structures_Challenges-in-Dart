var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

void ReverseList(List list) {
  // Reverse the list in-place
  for (int i = 0, j = list.length - 1; i < j; i++, j--) {
    // Swap the elements at indices i and j
    var temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }
  print(list);
}

void main() {
  print(list);
  ReverseList(list); // returns a List
}
