import 'dart:math';

import 'circle.dart';
import 'shape.dart';
import 'rectangle.dart';
import 'triangle.dart';

void main() {
  List<Shape> shapes = [new Circle(5), new Rectangle(4, 5), new Triangle(3)];

  final shapesInstance = new Shape(shapes);
  print(shapesInstance.calculateArea());
}
