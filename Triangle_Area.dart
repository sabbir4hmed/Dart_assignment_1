//Triangle area Calculation

import 'dart:io';

void main()
{
  
  print("Enter the base:");
  double baseArea = double.parse(stdin.readLineSync()!);
  print("Enter the height: ");
  double heightArea = double.parse(stdin.readLineSync()!);

  triangle(baseArea, heightArea);

}

 void triangle(double base, double height ) {
  double triangleArea = 0.5 * base * height;
  print("Triangle Area: $triangleArea");

}