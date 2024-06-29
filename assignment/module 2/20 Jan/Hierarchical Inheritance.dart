import 'dart:ffi';

class Bank
{
  bank()
  {
    print("Banking");
  }
}
class Current extends Bank
{
  current()
  {
    print("Current");
  }
}
class Save extends Bank
{
  save()
  {
    print("saving");
  }
}
void main()
{
  var c1=Current();
  var s1=Save();

  c1.current();
  s1.save();
  s1.bank();
}