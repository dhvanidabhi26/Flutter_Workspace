// pattern-4

//    *
//   **
//  ***
// ****
//*****


// void main() {
//   int n = 5;
//
//   for (int i = 1; i <= n; i++)
//   {
//     for (int j = n - 1; j >= i; j--)
//     {
//       print(" ");
//     }
//     for (int k = 1; k <= i; k++)
//
//     {
//       print("*");
//     }
//     print(""); // Newline after each row
//   }
// }
import 'dart:io';

void main()
{
  int row=5,
  i, j, space;

  for (i = 1; i <= row; i++)// Loop for rows
  {
    for (space = 0; space < (row - i); space++)// Loop for spaces
    {
      stdout.write(" ");
    }
    for (j = 1; j <= i; j++)// Loop for printing asterisks
    {
      stdout.write("*");
    }
    print("");
  }
}
