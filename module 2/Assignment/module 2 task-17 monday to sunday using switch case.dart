import 'dart:io';
void main()
{

  print("Enter Any Number");
  int num = int.parse(stdin.readLineSync().toString());

  switch(num)
  {
    case 1 : print(" Your Selected Day is Monday");

    case 2 : print(" Your Selected Day is Tuesday");

    case 3 : print(" Your Selected Day is Wednesday");

    case 4 : print(" Your Selected Day is Thursday");

    case 5 : print(" Your Selected Day is Friday");

    case 6 : print(" Your Selected Day is Saturday");

    case 7 : print(" Your Selected Day is Sunday");

  }
}