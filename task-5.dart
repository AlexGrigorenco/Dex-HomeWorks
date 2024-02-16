//! Написать функцию, которая принимает строку и возвращает строку со словами в обратном порядке.
void main() {
  print(reverseWords('Hello World'));
}

String reverseWords(String str) {
  return str.split(' ').reversed.join(' ');
}