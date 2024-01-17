import 'dart:io';

void main()
{
  print("Enter Your Maths Marks");
  int Maths = int.parse(stdin.readLineSync().toString());

  print("Enter Your Science Marks");
  int Science = int.parse(stdin.readLineSync().toString());

  print("Enter Your English Marks");
  int English = int.parse(stdin.readLineSync().toString());

  print("Enter Your Hindi Marks");
  int Hindi = int.parse(stdin.readLineSync().toString());

  print("Enter Your Sanskrit Marks");
  int Sanskrit = int.parse(stdin.readLineSync().toString());

  int sum = Maths+Science+English+Hindi+Sanskrit;
  print(sum);

  double percentage =(sum)/5;
  print(percentage);

  if (percentage>75)
  {
    print("Distinction");
  }
      else if (percentage>60 && percentage<=75)
       {
         print("First Class");
       }
     else if (percentage>50 && percentage<=60)
       {
         print("Second Class");
       }
     else if (percentage>35 && percentage<=50)
       {
         print("Pass CLass");
       }
    else 
      {
        print("Fail");
      }
}