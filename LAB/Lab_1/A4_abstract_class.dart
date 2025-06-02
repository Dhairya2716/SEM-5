import 'dart:io';

abstract class mainclass{
  void display();
}

class subclass extends mainclass{
  @override
  void display(){
    stdout.write('::: CHILD CLASS :::');
  }
}

void main(){
  subclass s1 = new subclass();
  s1.display();
}