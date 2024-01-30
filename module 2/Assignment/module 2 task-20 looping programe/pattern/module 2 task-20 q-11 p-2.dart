// Pattern-2

//1
//12
//123
//1234
//12345

import 'dart:io';

void main()
{
  int i,j;

  for(i=1;i<=5;i++)//row
      {
        for(j=1;j<=i;j++)//col
        {
          stdout.write(j);
        }
       print("");
      }
}