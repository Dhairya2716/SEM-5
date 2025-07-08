import '../../utils/import_export.dart';

class RxBoolController extends GetxController{

  final RxBoolModel _model = RxBoolModel();

  RxBool get isVisible => _model.isVisible;

  void toggleVisibility(){
    _model.isVisible.value = !_model.isVisible.value;
  }

}