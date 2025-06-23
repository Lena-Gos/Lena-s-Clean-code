import 'dart:math';

import 'employee.dart';

void main() {
  final fulltimeEmployee = new Employee('Alice', EmployeeType.FullTime);
  print(
      '${fulltimeEmployee.name}\'s salary is ${fulltimeEmployee.calculateSalary()}');

  final internEmployee = new Employee('Bob', EmployeeType.Intern);
  print(
      '${internEmployee.name}\'s salary is ${internEmployee.calculateSalary()}');
}
