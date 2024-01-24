class RBI
{
  int roi()
  {
    return 0;
  }
}
class SBI extends RBI
{
  int roi()
  {
    return 5;
  }
}
class AXIS extends RBI
{
  int roi()
  {
    return 6;
  }
}
class ICICI extends RBI
{
  int roi()
  {
    return 7;
  }
}
class BOB extends RBI
{
  int roi()
  {
    return 8;
  }
}
void main()
{
  var r=RBI();

  r=SBI();
  print(r.roi());

  r=AXIS();
  print(r.roi());

  r=ICICI();
  print(r.roi());

  r=BOB();
  print(r.roi());
}