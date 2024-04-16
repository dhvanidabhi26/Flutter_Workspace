// find a max number using nestedif

void main()
{

  int a=97;
  int b=72;
  int c=64;

  if(a>=b && a>=c)   // This condition for the a is largest number to other
    {
    print("A is largest number");

    if(b>=a && b>=c)
    {
      print("B is largest number");
    }
  }

  else
  {
    print("C is largest number");
  }
}