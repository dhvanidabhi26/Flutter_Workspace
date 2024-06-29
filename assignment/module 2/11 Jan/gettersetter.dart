// Model class
import 'dart:io';

class Student
{
  var _id;
  var _name;

  get name => _name;

  set name(value)
  {
    _name = value;
  }

  get id => _id;

  set id(value)
  {
    _id = value;
  }

}


// setter-getter

void main() {
  print("Enter Your id");
  var ids1 = int.parse(stdin.readLineSync().toString());

  print("Enter Your Name");
  var names1 = stdin.readLineSync().toString();

  var s1 = Student();
  //value set
  s1._id = ids1;
  s1._name = names1;

  // value get
  print(s1._id);
  print(s1._name);

  print("Enter Your id");
  var ids2 = int.parse(stdin.readLineSync().toString());

  print("Enter Your Name");
  var names2 = stdin.readLineSync().toString();

  var s2 = Student();
  //value set
  s2._id = ids2;
  s2._name = names2;

  // value get
  print(s2._id);
  print(s2._name);

}