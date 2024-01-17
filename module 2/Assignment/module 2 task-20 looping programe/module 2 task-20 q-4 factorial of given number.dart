// Factorial of Given Number

import 'dart:io';

void main(){

  print("Enter Number");
  int Number = int.parse(stdin.readLineSync().toString());

  int no= 1;
  for(int i = 1; i<= Number; i++)
  {
    no*= i;
  }

  print("Factorial of number is :$no");


}