//switch case

import 'dart:io';
void main()

{

  print("Enter Any Number");
  int num = int.parse(stdin.readLineSync().toString());

  switch(num)
  {
    case 1 : print("your Selected Language is English");
    break;

    case 2 : print("your Selected Language is Hindi");
    break;

    case 3 : print("your Selected Language is Gujarati");
    break;

  }
}
