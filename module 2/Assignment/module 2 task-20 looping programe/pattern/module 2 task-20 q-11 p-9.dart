// pattern-9

//     1
//    2 2
//   3 3 3
//  4 4 4 4
// 5 5 5 5 5

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
