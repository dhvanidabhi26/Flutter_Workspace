// reverse order

import 'dart:io';

void main()
{
  int no, reverse =0, lastdigit;

  print("Enter Any Number");
  no=int.parse(stdin.readLineSync().toString());

  while(no>0)
  {
    lastdigit=no%10;                            //Extracting the last digit of the number
    //In first time no%10 give 3; the last digit of 123
    //In second time no%10 give 2; the last digit of 12
    // In third time no%10 give 1; the last digit of 1

    reverse=(reverse*10)+lastdigit;            //Building the reversed number
    //In first time(0*10)+3; reverse became 3
    //In second time(3*10)+2; reverse became 32
    //In third time(32*10)+1; reverse become 321

    no~/=10;                                  // removing the last digit
    // remove the last digit from no becomes 12
    //remove the last digit from no becomes 1
    // remove the last digit from no become ...
  }
  print("$reverse");
}



// import 'dart:io';
//
// void main() {
//   print("Enter any number:");
//   String input = stdin.readLineSync()!;
//
//   String reversed = input.split('').reversed.join('');
//
//   print("Reversed number: $reversed");
// }
