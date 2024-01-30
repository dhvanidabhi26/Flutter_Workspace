// pattern-8

//     1
//    1 2
//   1 2 3
//  1 2 3 4
// 1 2 3 4 5

import 'dart:io';

void main()
{
  int i, j, space;

  for (int i = 1; i <= 5; i++)
  {
    for (int space = 0; space != (5 - i); space++)//row
        {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++)//colum
        {
      stdout.write("$j ");
    }
    print("");
  }
  print("");
}
