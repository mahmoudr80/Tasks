import 'dart:ffi';

void main() {
  // 1:
  int age;
  age = 21;

  //2:
  displayProblemNumber(2);
  String firstName = "Saeid", lastName = "Ayoub";
  print("Full Name : $firstName $lastName");

  //3:
  double heightInMeters = 1.71;

  //4:
  bool isStudent = true;

  //5:
  displayProblemNumber(5);
  num x = 12, y = 4;
  print("x = ${x} , y = ${y}");
  print("x + y = ${x + y}");
  print("x - y = ${x - y}");
  print("x * y = ${x * y}");
  print("x / y = ${(x / y).toDouble()}");
  print("x % y = ${x % y}");

  //6:
  displayProblemNumber(6);
  const double pi = 3.14;
  //Formula of Area Circle is : pi * ( r * r )
  double radius = 5;
  print("Area of Circle with radius 5 is : ${pi * (radius*radius)}");


  //7:
  displayProblemNumber(7);
  int minutes = 120;
  int hours = (minutes/60).toInt();
  print("$minutes min is $hours hours.");


//8:
displayProblemNumber(8);
int result1 = 2 + 3 * 4;
print(result1);
// result is : 14 
// because : orderd of operations, Multiplication more priorer than Addition
// * before + 

//9:
displayProblemNumber(9);
int result2 = (2 + 3) * 4;
print(result2);
// result is : 20
//becase where you find braces () you should finish them first
// Braces () more priorer than any operation (*,/,%,+,-)


//10:
displayProblemNumber(10);
int result3 = 10 - 2 * 3 + 1;
print(result3);
//result is : 3 
// because : orderd of operations, Multiplication more priorer than Addition and Subtraction
// (*) first then (+) then (-)
// 2*3 then 10 


//11:
displayProblemNumber(11);
//Check if a Number is Positive or Negative or Zero.
signOfNumber(-9);
signOfNumber(9);
signOfNumber(0);


//12:Check if a Number is Even or Odd.
displayProblemNumber(12);
isEven(15)?print("Even"):print("Odd");
isEven(10)?print("Even"):print("Odd");



// 13 :largest and smallest element of 3 values.
displayProblemNumber(13);
num number1 = 20 , number2 = -30, number3 = 0 ;
num maximum = biggestNumber(number1, number2, number3);
print("Maximum number between $number1 , $number2 , $number3 is : \n{$maximum}");
num minimum = smallestNumber(number1, number2, number3);
print("Minimum number between $number1 , $number2 , $number3 is : \n{$minimum}");


}


// ********************** Functions & Procedures *****************************

num smallestNumber(num number1, num number2, num number3)
{
  num result = minNumber(number1, number2);
  result = minNumber(result, number3);
  return result;
}


num biggestNumber(num number1, num number2, num number3)
{
  num result = maxNumber(number1, number2);
  result = maxNumber(result, number3);
  return result;
}

num minNumber(num number1,num number2)
{
  return (number1<number2)?number1:number2;
}
num maxNumber(num number1,num number2)
{
 return (number1>number2)? number1: number2;
}

bool isEven(num number)
{
  return number%2==0;
}

void signOfNumber(num number)
{
if(isPositive(number)){

  print("Positive");
  return;
}
number==0?print("Zero"):print("Negative");
}

bool isPositive(num number)
{
return (number>0);
}

void displayProblemNumber(int number)
{
print("\n\nProblem Number $number\n===================================\n\n");
}