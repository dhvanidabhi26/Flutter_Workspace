class Student
{
  int id = 0;
  String name = "";

  Student(int id ,String name)
  {
    this.id=id;
    this.name=name;
  }

  void display()
  {
    print("$id , $name");
  }
}

void main ()
{
  var s=Student(101, "dhvani");
  s.display();
}