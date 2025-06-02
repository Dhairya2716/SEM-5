import 'dart:io';

class mainclass{

  void demo(){
    stdout.write('Main class\n');
  }
}

class subclass extends mainclass{
  @override
  void demo(){
    super.demo();
    stdout.write('subclass');
  }
}

void main(){
  subclass s1 = subclass();
  s1.demo();
}