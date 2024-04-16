// Fibonacci series

import 'dart:io';

void main() {
  print("Enter the number :");
  int count = int.parse(stdin.readLineSync().toString());  // count=5

  // First two numbers of the Fibonacci sequence
  int n1 = 0, n2 = 1;

  // Printing the first two numbers                       // print first 0,1
  print(n1);
  print(n2);

  // Generating the rest of the Fibonacci sequence
  for (int i = 2; i < count; i++)
    // int start with 2
    // int=2; n1=0 and n2=1 than print sum=1
    // int=3; n1=1 and n2=1 than print sum=2
    // int=4; n1=1 and n2=2 than print sum=3
    // int=5; n1=2 and n2=3 than print sum=5
  {
    int sum = n1 + n2;
    print(sum);

    // Updating n1 and n2 for the next iteration
    n1 = n2;
    n2 = sum;
  }

  }
