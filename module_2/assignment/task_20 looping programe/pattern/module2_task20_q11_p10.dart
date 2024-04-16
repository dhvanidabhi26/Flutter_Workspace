// Pattern-10

/*
Create Below Pattern:
  1
  2 3
  4 5 6
  7 8 9 10
  11 12 13 14 15

 */
import 'dart:io';

void main() {
  int rows = 5;
  int count = 1;

  for (int i = 1; i <= rows; i++) // Loop for rows
  {

    for (int space = 1; space <= (rows - i); space++)  // Loop for spaces
    {
      stdout.write("");
    }
    for (int j = 1; j <= i; j++) // Print numbers for each row
    {
      stdout.write("$count ");
      count++;
    }

    print("");
  }
}
