import 'dart:io';
void main()
{
  print ("Enter Any Number For the Table");
  int num = int.parse(stdin.readLineSync().toString());

  var no= num;

  for(var i=1; i<=10; i++)
  {
    print ("$no*$i =$no");
  }

}
