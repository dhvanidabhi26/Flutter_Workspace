//odd or even

import 'dart:io';

void main()
{
  print ("Enter Any Number");
  int Number = int.parse(stdin.readLineSync().toString());

  if (Number % 2 ==0)
  {
    print ("This Number is Even Number");
  }
  else
  {
    print ("This Number is Odd Number");
  }
}