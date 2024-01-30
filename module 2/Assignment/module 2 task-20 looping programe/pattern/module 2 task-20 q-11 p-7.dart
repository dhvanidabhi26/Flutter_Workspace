//pattern-7

//     *
//    * *
//   * * *
//  * * * *
// * * * * *

import 'dart:io';

void main()
{
  int i, j, space;

  for (int i = 1; i <= 5; i++)
  {
    for (int space = 0; space != (5 - i); space++)
    {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++)
    {
      stdout.write("* ");
    }
    print("");
  }
print("");
}


