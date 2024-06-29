class person
{
  String call(int age ,String name)
  {
    return"The name of person is $name and age is $age";
  }
}
void main()
{
  var p1 =person();
  var p2 =p1(20,"Dhvani");
  print(p2);
}