// Factorial of Given Number

import 'dart:io';

void main(){

  print("Enter Number");
  int Number = int.parse(stdin.readLineSync().toString());

  // Formula to Calculate Factorial : n! = n × (n - 1)!
  //i=1, no multiplied by 1 so remains 1
  //i=2, no multiplied by 2 so became 1*2=2
  //i=3, no multiplied by 3 so became 2*3=6
  //i=4, no multiplied by 4 so became 6*4=24
  //the propose was end the loop was terminates

  int no= 1;
  for(int i = 1; i<= Number; i++)
  {
    no*= i;
  }

  print("Factorial of number is :$no");


}
