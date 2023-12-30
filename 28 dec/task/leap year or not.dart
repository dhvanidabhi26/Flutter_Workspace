import 'dart:io';

void main()
{
  print("Enter Any Year");
  int Year = int.parse(stdin.readLineSync().toString());

  if(Year % 4 ==0)
  {
    print("Year is leap Year");
  }
  else
  {
    print("year is not leap year");
  }
}
