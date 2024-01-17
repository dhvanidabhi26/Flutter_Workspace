import 'dart:io';

void main()
{
  print("Enter Any number");
  int num = int.parse(stdin.readLineSync().toString());

  if (num == 1)
  {
    print("Addition");

    print("Enter 1st Number for addition");
    var num1 = int.parse(stdin.readLineSync().toString());
    print("Enter 2nd Number for addition");
    var num2 = int.parse(stdin.readLineSync().toString());

    var add = num1+num2;
    print("Addition Of number is : $add");
  }

  else if (num == 2)
  {
    print("Subtraction");

    print("Enter 1st Number for Subtraction");
    var num1 = int.parse(stdin.readLineSync().toString());
    print("Enter 2nd Number for Subtraction");
    var num2 = int.parse(stdin.readLineSync().toString());

    var sub = num1-num2;
    print("Subtraction Of number is : $sub");
  }

  else if (num == 3)
  {
    print("Multiplication");

    print("Enter 1st Number for Multiplication");
    var num1 = int.parse(stdin.readLineSync().toString());
    print("Enter 2nd Number for Multiplication");
    var num2 = int.parse(stdin.readLineSync().toString());

    var mul = num1*num2;
    print("Addition Of number is : $mul");
  }

  else if (num == 4)
  {
    print("Division");

    print("Enter 1st Number for Division");
    var num1 = int.parse(stdin.readLineSync().toString());
    print("Enter 2nd Number for Division");
    var num2 = int.parse(stdin.readLineSync().toString());

    var div = num1/num2;
    print("Addition Of number is : $div");
  }
else
  {
    print("The Number doesn't Exit");
  }
}