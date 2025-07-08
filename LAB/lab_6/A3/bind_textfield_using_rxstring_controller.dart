import '../../utils/import_export.dart';

class BindTextfieldUsingRxstringController{

  final BindTextfieldUsingRxstringModel model = BindTextfieldUsingRxstringModel();

  RxString get inputText => model.inputText;

  void updateTextField(String value){
    model.inputText.value = value;
  }

}