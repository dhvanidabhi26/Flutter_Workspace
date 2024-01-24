class Mycolor
{
  String color="white";
}
class Mycolor2 extends Mycolor
{
  String color="black";

void display()
{
  print(color);
  print(super.color);
}
}

void main()
{
  var a1=Mycolor2();
  a1.display();
}
