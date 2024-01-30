// Pattern-3

//1
//22
//333
//4444
//55555

import 'dart:io';

void main()
{
  int i,j;

  for(i=1;i<=5;i++)//row
      {
    for(j=1;j<=i;j++)//col
        {
      stdout.write(i);
    }
    print("");
  }
}