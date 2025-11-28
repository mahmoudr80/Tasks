import 'dart:ffi';

void main() {
  //1:Number is Positive or Negative or Zero.
  displayProblemNumber(1);
  //Check if a Number is Positive or Negative or Zero.
  signOfNumber(-9);
  signOfNumber(9);
  signOfNumber(0);

  //2:Check if a Number is Even or Odd.
  displayProblemNumber(2);
  isEven(15) ? print("Even") : print("Odd");
  isEven(10) ? print("Even") : print("Odd");

  //3:Calculate the Sum of first 100 Natural Numbers
  displayProblemNumber(3);
  print("Sum of Numbers From 1 to 100 : ${sumOfNumbersFrom1ToN(100)}");

  //4:Make a Simple Calculator Using switch...case.
  displayProblemNumber(4);
  print(" 22 + 22 = ${Calc(22, 22, '+')}");
  print(" 30 - 22 = ${Calc(30, 22, '-')}");
  print(" 10 * 22 = ${Calc(10, 22, '*')}");
  print(" 44 / 22 = ${Calc(44, 22, '/')}");
  print("(0 means devide on 0) 44 / 0 = ${Calc(44, 0, '/')}");
  print(" 44 % 22 = ${Calc(44, 22, '%')}");

  // 5 :largest and smallest element of 3 values.
  displayProblemNumber(5);
  num number1 = 20, number2 = -30, number3 = 0;
  num maximum = biggestNumber(number1, number2, number3);
  print(
    "Maximum number between $number1 , $number2 , $number3 is : \n{$maximum}",
  );
  num minimum = smallestNumber(number1, number2, number3);
  print(
    "Minimum number between $number1 , $number2 , $number3 is : \n{$minimum}",
  );

  //6: display even numbers from 1 to n numbers.
  displayProblemNumber(6);
  displayNumbersFrom1ToN(100);


  //7:Factorial using loops.
  displayNumbersFrom1ToN(7);
  print("Factorial of 5 is : ${Factorial(5)}");
}

num Factorial(int number) {
  num result = 1;
  for (int i = number; i > 1; i--) result = result * i;

  return result;
}

void displayNumbersFrom1ToN(int N) {
  for (int i = 0; i <= N; i++) if (isEven(i)) print(i);
}

num Calc(num number1, num number2, String op) {
  switch (op) {
    case '+':
      return number1 + number2;
    case '-':
      return number1 - number2;
    case '*':
      return number1 * number2;
    case '%':
      return number1 % number2;
    case '/':
      return number2 == 0 ? 0 : number1 / number2;
    default:
      return -1;
  }
}

num sumOfNumbersFrom1ToN(num N) {
  num sum = 0;
  for (int i = 1; i <= N; i++) sum += i;
  return sum;
}

// ********************** Functions & Procedures *****************************

num smallestNumber(num number1, num number2, num number3) {
  num result = minNumber(number1, number2);
  result = minNumber(result, number3);
  return result;
}

num biggestNumber(num number1, num number2, num number3) {
  num result = maxNumber(number1, number2);
  result = maxNumber(result, number3);
  return result;
}

num minNumber(num number1, num number2) {
  return (number1 < number2) ? number1 : number2;
}

num maxNumber(num number1, num number2) {
  return (number1 > number2) ? number1 : number2;
}

bool isEven(num number) {
  return number % 2 == 0;
}

void signOfNumber(num number) {
  if (isPositive(number)) {
    print("Positive");
    return;
  }
  number == 0 ? print("Zero") : print("Negative");
}

bool isPositive(num number) {
  return (number > 0);
}

void displayProblemNumber(int number) {
  print("\n\nProblem Number $number\n===================================\n\n");
}
