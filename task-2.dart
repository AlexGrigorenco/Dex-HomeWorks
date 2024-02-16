//! Написать функцию, принимающую список int, возвращающую среднее арифметическое чисел из исходного списка. Результат выполнения функции вывести в консоль.
void main() {
  print(calcAverage([1, 2, 3, 4, 5]));
}

double calcAverage(List<int> numberList) {
  if (numberList.isEmpty) {
    return 0;
  }
  return numberList.reduce((value, element) => value + element) /
      numberList.length;
}
