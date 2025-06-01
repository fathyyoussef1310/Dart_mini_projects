import 'dart:io';
import 'dart:math';

class Employee {
  String name;
  String nationalId;
  String gender;
  double actualSalary;
  int availableVacations = 15;
  int availablePermissionHours = 20;
  static double salary = 1500.0;
  static double deductionPerDay = 85.5;
  static double deductionPerHour = 15.5;

  Employee.constructor()
      : name = ' ',
        nationalId = ' ',
        gender = ' ',
        actualSalary = salary;

  Employee(this.name, this.nationalId, {this.gender = ' '})
      : actualSalary = salary;

  String View() {
    return "Your name is: $name, your ID: $nationalId, and your salary is: \$${actualSalary}";
  }

  String ViewDetails() {
    return '${View()}, Vacations: $availableVacations, Permission Hours: $availablePermissionHours, Deductions Per Day: $deductionPerDay, Per Hour: $deductionPerHour';
  }

  double Calculate_ActualSalary() {
    return actualSalary;
  }

  int takevacation(int days) {
    if (availableVacations >= days)
    {
      availableVacations -= days;
    } else
    {
      int extraDays = days - availableVacations;
      actualSalary -= extraDays * deductionPerDay;
      availableVacations = extraDays;
    }
    return availableVacations;
  }

  int takepermisions(int hours) {
    if (availablePermissionHours >= hours)
    {
      availablePermissionHours -= hours;
    }
    else
    {
      int extraHours =  availablePermissionHours-hours;
      actualSalary -= extraHours * deductionPerHour;
      availablePermissionHours = extraHours;
    }
    return availablePermissionHours;
  }
}

void main()
{
  Employee emp1 = Employee("Ahmed Ali", "Abb11220");
  print(emp1.ViewDetails());
  print("Remaining permission hours: ${emp1.takepermisions(22)}");
  print("Remaining vacation days: ${emp1.takevacation(20)}");
  print("His actual salary is: ${emp1.Calculate_ActualSalary()}");
}
