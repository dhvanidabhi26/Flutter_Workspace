import 'dart:io';
void main()
{
  print("Enter Your Name");
  String? Name = stdin.readLineSync();

  print("Enter Your Suname");
  String? Surname = stdin.readLineSync();

  print ("Enter Your Email");
  String? Email = stdin. readLineSync();

  print ("Enter Your Password");
  String? Password = stdin.readLineSync();

  print ("\n Your Name is $Name \n Your Surname is $Surname \n Your Email is $Email \n Your Password is $Password");

  if (Email=="dhvani@gmail.com" && Password=="9876")
  {
    print("Logged in Successfully");
  }

  else
  {
    if (Email!="dhavni@gmail.com")
    {
      print (" Your Email Id is wrong");
    }
    if (Password!="9876")
    {
      print (" Your Password is wrong");
    }

    else
    {
      print (" Invalid Credentials");
    }
  }
}

