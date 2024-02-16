//! Написать функцию, принимающую год (int), возвращающую bool. Результат функции должен отражать является ли год високосным.

void main() {
  print(isYeapYear(2024));
  print(isYeapYear(2023));
  print(isYeapYear(2022));
  print(isYeapYear(2021));
  print(isYeapYear(2020));
}

bool isYeapYear(int year) {
  if (year % 4 != 0) {
    return false;
  } else if (year % 100 != 0) {
    return true;
  } else if (year % 400 != 0) {
    return false;
  }
  return true;
}