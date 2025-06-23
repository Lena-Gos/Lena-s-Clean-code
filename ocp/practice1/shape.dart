import 'dart:math';

import 'circle.dart';
import 'rectangle.dart';

class Shape {
  static const double PI = 3.14;
  final List<Shape> shapes;
  Shape(this.shapes);

  double calculateArea() {
    double total = 0.0;
    shapes.forEach((shape) {
      if (shape is Circle) {
        total += PI * pow(shape.radius, 2);
      }
      ;
      if (shape is Rectangle) {
        total += shape.height * shape.width;
      }
    });
    return total;
  }
}
