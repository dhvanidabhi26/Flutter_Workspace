// pattern-8

//     1
//    1 2
//   1 2 3
//  1 2 3 4
// 1 2 3 4 5

import 'dart:io';

void main() {
  int rows = 5;

  for (int i = 1; i <= rows; i++) // Loop for rows
      {

    for (int space = 1; space <= (rows - i); space++)// Loop for spaces
    {
      stdout.write(" ");
    }

    for (int j = 1; j <= i; j++)
    {
      stdout.write("$j ");
    }

    print("");
  }
}
