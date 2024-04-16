// Pattern-1

//*
//**
//***
//****
//*****
import 'dart:io';

void main()
{
  int ;


  for (int i = 1; i <= 5; i++)// Outer loop for rows
  {
    for (int j = 1; j <= i; j++)// Inner loop for printing '*'
    {
      stdout.write("*");
    }
    print('');
  }

}

