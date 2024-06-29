import 'objclass.dart';

class student
{
  var id;
  var name;
}
void main()
{
  var s1 = Student();//object
  var s2 = Student();
  var s3 = Student();

  s1.id = 1001;
  s1.name = "aaa";

  s2.id = 1002;
  s2.name = "bbb";

  s3.id = 1003;
  s3.name = "ccc";

  print("\n Your id is ${s1.id} , \n Your name is ${s1.name}");
  print("\n Your id is ${s2.id} , \n YOur name is ${s2.name}");
  print("\n Your id is ${s3.id} , \n Your name is ${s3.name}");
}