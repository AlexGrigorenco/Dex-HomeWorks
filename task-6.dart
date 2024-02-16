//! Написать функцию, которая принимает список чисел и возвращает список, содержащий только четные числа из исходного списка.
void main() {
  print(getEvenNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
}

List<int> getEvenNumbers(List<int> numbersList) {
  return numbersList.where((number) => number % 2 == 0).toList();
}