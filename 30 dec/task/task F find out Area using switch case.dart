  //  Find Area Using Swich Case:

import 'dart:io';
void main()
{

  print("Enter Any number");
  int num = int.parse(stdin.readLineSync().toString());

  switch(num)
      {
    case 1: print("Area of Triangle");
    print ("Enter base");
    int base= int.parse(stdin.readLineSync().toString());
    print ("Enter height");
    int height = int.parse(stdin.readLineSync().toString());

    double areat =0.5*base*height;
    print("Area of Triangle is : $areat");


    case 2: print("Area of Rectangle");
    print ("Enter breadth");
    int breadth= int.parse(stdin.readLineSync().toString());
    print ("Enter length");
    int length = int.parse(stdin.readLineSync().toString());

    var arear = breadth*length;
    print("Area of Rectangle is : $arear");

    case 3: print("Area of Circle");
    double PI= 3.14;
    print ("Enter radius");
    int radius = int.parse(stdin.readLineSync().toString());

    var areac = PI*radius*radius;
    print ("Area of Circle is : $areac");


  }
}
