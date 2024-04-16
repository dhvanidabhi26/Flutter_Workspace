// pattern-5

//    1
//   21
//  321
// 4321
//54321

import 'dart:io';

void main()
{
  int rows = 5;

  for (int i = 1; i <= rows; i++) // Loop for rows
  {
    for (int space = 1; space <= (rows - i); space++)  // Loop for spaces
    {
      stdout.write(" ");
    }
    for (int j = i; j >= 1; j--)   // Loop for printing numbers
    {
      stdout.write("$j");
    }
    print(" ");
  }
}
