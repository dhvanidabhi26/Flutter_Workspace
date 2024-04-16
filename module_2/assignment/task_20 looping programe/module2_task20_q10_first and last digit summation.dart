// first and last digit summation
import 'dart:io';

void main()
{

  print("Enter any Number");

  int n1,summation,lastDigit,firstDigit ;
  n1 = int.parse(stdin.readLineSync().toString());

  lastDigit = n1 % 10;
  while (n1 >= 10)
  {
    double n2 = n1/10;
    n1 = n2.toInt();
  }
  firstDigit = n1;
  summation = firstDigit + lastDigit;
  print("First and Last Summation is $summation.");

}
