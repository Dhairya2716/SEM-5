import 'dart:io';

class Student{

  String name;
  int enrollmentnumber;
  int age;

  Student(this.name,this.enrollmentnumber,this.age);

  void student_details(){
    stdout.write("Student's name is : $name\n");
    stdout.write("Student's enrollment no. is : $enrollmentnumber\n");
    stdout.write("Student's age is : $age\n");
  }

}

void main(){
  Student s1 = new Student('Dhairya', 23010101075, 19);
  s1.student_details();
}