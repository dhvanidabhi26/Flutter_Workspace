class Student
{
    int id=0;
    String name ="";
    static String clg="abc";// static variable

    Student(int id, String name)
    {
      this.id=id;
      this.name=name;
    }

    void display()
    {
      print("$id, $name, $clg");
    }
    static void change()
    {
      clg="xyz";
    }
}

void main()
{
  var s2 =Student(101, "dhvani");
  var s3 =Student(102, "meet");
  var s4 =Student(103, "palak");
  var s5 =Student(104, "parth");

  Student.change();

  // non static method
  s2.display();
  s3.display();
  s4.display();
  s5.display();

}