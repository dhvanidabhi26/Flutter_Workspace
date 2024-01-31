/*
Create Below Pattern:
  1
  2 3
  4 5 6
  7 8 9 10
  11 12 13 14 15

 */
import 'dart:io';

void main()

{
  int n = 1;

  for (int i = 1; i <= 5; i++)
  {
    for (int space = 0; space < (5 - i); space++)
    {
      stdout.write("");
    }
    for (int j = 1; j <= i; j++)
    {
      stdout.write("$n ");
      n++;
    }
    print("");
  }
}
