// Pattern-11
/*
Create Below Pattern:
  1
  0 1
  1 0 1
  0 1 0 1
  1 0 1 0 1

 */

import 'dart:io';

void main() {
  int rows = 5;

  for (int i = 1; i <= rows; i++)  // Loop for rows
  {

    for (int space = 1; space <= (rows - i); space++) // Loop for spaces
    {
      stdout.write("");
    }


    for (int j = 1; j <= i; j++) // Print numbers for each row
    {
      if ((i + j) % 2 == 0)
      {
        stdout.write("0 ");
      } else
      {
        stdout.write("1 ");
      }
    }

    print("");
  }
}
