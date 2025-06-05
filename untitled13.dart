import 'dart:io';

class Student
{
  Project? currentProject;
  int id;
  String name;
  String evaluation;
  Student(this.name, this.id, this.evaluation);
}
class Project {
  String? name;
}
void main()
{
  int x;
  try
  {
    num x = int.parse(stdin.readLineSync()!);
      print(x);
    }catch (e){
      print("Caught an exception: $e");
    }
}
