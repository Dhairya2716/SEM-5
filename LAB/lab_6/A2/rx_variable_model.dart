import '../../utils/import_export.dart';

class RxVariableModel{

  RxInt count = 0.obs;
  RxString message = MESSAGE.obs;

  void increment(){
    count++;
    message.value = 'Count is now::::$count';
  }

  void reset(){
    count.value = 0;
    message.value = MESSAGEVALUE;
  }

}