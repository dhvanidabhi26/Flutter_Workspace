import 'dart:io';
void main()
{

  print("Enter Any Number");
  int num = int.parse(stdin.readLineSync().toString());

  switch(num)
      {
    case 1 : print(" Your Selected Day is Monday");
    //break;

    case 2 : print(" Your Selected Day is Tuesday");
    //break;

    case 3 : print(" Your Selected Day is Wednesday");
    //break;

    case 4 : print(" Your Selected Day is Thursday");
    //break;

    case 5 : print(" Your Selected Day is Friday");
    //break;

    case 6 : print(" Your Selected Day is Saturday");
    //break;

    case 7 : print(" Your Selected Day is Sunday");
    //break;

  }
}