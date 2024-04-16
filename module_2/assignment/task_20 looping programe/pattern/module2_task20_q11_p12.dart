//Pattern-12

/*
Create Below Pattern:
  1
  4 4
  9 9 9
  16 16 16 16
  25 25 25 25 25

 */

import 'dart:io';

void main() {
  int rows = 5;

  for (int i = 1; i <= rows; i++) // Loop for rows
  {

    for (int space = 1; space <= (2 * (rows - i)); space++)// Loop for spaces
    {
      stdout.write(" ");
    }

    int number = i * i; // Calculate the squared number for the row

    for (int j = 1; j <= i; j++) // Print numbers for each row
    {
      stdout.write("$number ");
    }
    print("");
  }
}
