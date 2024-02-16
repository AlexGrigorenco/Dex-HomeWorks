//! Написать функцию, которая принимает два числа (int), первое задает длина шага, второе — кол-во шагов. Результат функции список List<int>, должен отражать пройденную длину на каждом шаге. Результат вывести в консоль
void main() {
  print(calcSteps(5, 10));
}

List<int> calcSteps(int stepSize, int stepCount) {
  List<int> result = [];
  int totalStepSize = 0;
  for (int i = 0; i < stepCount; i++) {
    totalStepSize += stepSize;
    result.add(totalStepSize);
  }
  return result;
}