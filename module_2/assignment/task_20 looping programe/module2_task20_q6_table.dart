// Table

import'dart:io';
void main()

{
  print("Enter Any Number For Table");
  int num = int.parse(stdin.readLineSync().toString());

  var i=num;

  for(var i=1;i<=10;i++)
  {
    print("$num*$i=${num*i}");
  }
}
