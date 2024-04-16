// leap year or not

import 'dart:io';

void main()
{
 print ("Enter Any year");
 int year = int.parse(stdin.readLineSync().toString());

  if (year % 4 ==0)
{
  print("year is leap year");
}
  else
    {
      print("year is not leap year");
    }
}