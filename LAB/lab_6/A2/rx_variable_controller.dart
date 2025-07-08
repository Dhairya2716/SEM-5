import '../../utils/import_export.dart';

class RxVariableController extends GetxController{

  final RxVariableModel model = RxVariableModel();

  void increment() => model.increment();
  void reset() => model.reset();

  RxInt get count => model.count;
  RxString get message => model.message;

}