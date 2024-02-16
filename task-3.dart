//! Написать функцию, принимающую список int, возвращающую строку состоящую из отсортированных чисел исходного списка (от меньшего к большему).
void main() {
  print(sortNumbers([10, 5, 2, 8, 1, 3, 9]));
}

String sortNumbers(List<int> numbersList) {
  numbersList.sort();
  return numbersList.join(' ');
}
