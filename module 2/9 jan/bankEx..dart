import 'dart:io';
class Bank
{
  var accno;
  var accname;
  var accbal;
}
void main()
{
  print("Enter accno for first holder");
  var a1 = int.parse(stdin.readLineSync().toString());

  print("Enter accname for first holder");
  var b1 = stdin.readLineSync();

  print("Enter balance for first holder");
  var c1= int.parse(stdin.readLineSync().toString());

  var B1= Bank();
  B1.accno=a1;
  B1.accname=b1;
  B1.accbal=c1;

  print("Enter accno for second holder");
  var a2 = int.parse(stdin.readLineSync().toString());

  print("Enter accname for second holder");
  var b2 = stdin.readLineSync().toString();

  print("Enter balance for second holder");
  var c2= int.parse(stdin.readLineSync().toString());

  var B2= Bank();
  B2.accno=a2;
  B2.accname=b2;
  B2.accbal=c2;

  print("Enter accno for third holder");
  var a3 = int.parse(stdin.readLineSync().toString());

  print("Enter accname for third holder");
  var b3 = stdin.readLineSync().toString();

  print("Enter balance for third holder");
  var c3= int.parse(stdin.readLineSync().toString());

  var B3= Bank();
  B3.accno=a3;
  B3.accname=b3;
  B3.accbal=c3;

print("Your 1st holder Details are : ${B1.accno},${B1.accname},${B1.accbal}");
print("Your 2st holder Details are : ${B2.accno},${B2.accname},${B2.accbal}");
print("Your 3st holder Details are : ${B3.accno},${B3.accname},${B3.accbal}");
}