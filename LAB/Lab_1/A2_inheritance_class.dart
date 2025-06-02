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

class Student2 extends Student{
  Student2(super.name,super.enrollmentnumber,super.age);

  void display(){
    super.student_details();
  }
}

void main(){
  Student s1 = new Student('Dhairya', 23010101075, 19);
  s1.student_details();
  Student2 s2 = new Student2('Viraj', 2301010101, 18);
  s2.display();
}