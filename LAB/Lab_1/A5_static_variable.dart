import 'dart:io';

class addvalues{
   static List l1 = [1,2];
}

class demo{
  void appendvalue(){
    addvalues.l1.add(3);
  }
}

class demoprogram{
  void appendvalue(){
    addvalues.l1.add(4);
  }
}

void main(){
  demo d1 = new demo();
  d1.appendvalue();
  demoprogram d2 = new demoprogram();
  d2.appendvalue();

  stdout.write('::: updated list is  ::: ${addvalues.l1}');
}