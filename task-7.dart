//! Написать функцию, которая выводит на консоль все степени двойки от 2 до 64 включительно
void main() {
  printSquareNuber();
}

void printSquareNuber() {
  int number = 2;
  while (number <= 64) {
    print(number);
    number *= 2;
  }
}