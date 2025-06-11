import './utils/import_export.dart';

class SignUpController{

  final SignUpPage _model = SignUpPage();

  void addUser(String name, String email, String mobilenumber, String password,
      String confirm_password){
    _model.addSignUpDetails(name, email, mobilenumber, password, confirm_password);
  }

  List<Map<String, dynamic>> getUsers(){
    return _model.GetSignUpDetails();
  }

}