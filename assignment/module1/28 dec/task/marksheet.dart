//marksheet

import 'dart:io';

void main()
{
  print("Your Maths Marks is");
  int maths = int.parse(stdin.readLineSync().toString());

  print("Your Science Marks is");
  int science = int.parse(stdin.readLineSync().toString());

  print("Your English Marks is");
  int english = int.parse(stdin.readLineSync().toString());

  print("Your Hindi Marks is");
  int hindi = int.parse(stdin.readLineSync().toString());

  print("Your Sanskrit Marks is");
  int sanskrit = int.parse(stdin.readLineSync().toString());

  int sum = maths+science+english+hindi+sanskrit;
  print (sum);

  double percentage =(sum)/5;
  print (percentage);

}
