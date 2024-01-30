// reverse order
import 'dart:io';

void main()
{
  int no, reverse =0, lastdigit;

  print("Enter Any Number");
  no=int.parse(stdin.readLineSync().toString());

  while(no>0)
    {
      lastdigit=no%10;
      reverse=(reverse*10)+lastdigit;
      no~/=10;
    }
    print("$reverse");
}