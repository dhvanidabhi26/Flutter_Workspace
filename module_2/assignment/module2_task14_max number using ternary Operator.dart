// number using Ternary Operator

import 'dart:async';
import 'dart:math';

void main()
{
  int a=58;
  int b=68;
  int c=42;

  int max;

  max=(a>=b && a>=c) ? a: (b>=a && b>=c)? b:c;

  print("Maximum number is $max");
}