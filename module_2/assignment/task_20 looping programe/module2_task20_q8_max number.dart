
// find a max number
// find max number

import 'dart:io';

void main()
{
  double num;
  int maxDigit = 0;

  print("Enter Any Number");
  num = double.parse(stdin.readLineSync().toString());

  while (num > 0)
  {
    int currentDigit = (num % 10).toInt();
    if (currentDigit > maxDigit)
    {
      maxDigit = currentDigit;
    }
    num = (num ~/ 10).toDouble();
  }
  print("The maximum digit is $maxDigit");
}
