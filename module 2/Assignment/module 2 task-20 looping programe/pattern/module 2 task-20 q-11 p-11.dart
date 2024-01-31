/*
Create Below Pattern:
  1
  0 1
  1 0 1
  0 1 0 1
  1 0 1 0 1

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
      stdout.write((i+j+1)%2);
      stdout.write(" ");
    }
    print("");
  }
}


     // stdout.write((i+j+1)%2);

