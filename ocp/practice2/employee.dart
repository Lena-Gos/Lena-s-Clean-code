enum EmployeeType {
  FullTime,
  PartTime,
  Intern,
}

class Employee {
  final String name;
  final EmployeeType type;
  Employee(this.name, this.type);

  double calculateSalary() {
    switch (this.type) {
      case EmployeeType.FullTime:
        return 5000;
      case EmployeeType.PartTime:
        return 3000;
      case EmployeeType.Intern:
        return 1000;
      default:
        throw new Exception('Unknown employee type');
    }
  }
}
