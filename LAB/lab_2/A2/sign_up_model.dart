class SignUpPage{

  static final List<Map<String, dynamic>>  signuplist = [];

  void addSignUpDetails(String name, String email,
      String mobilenumber, String password, String confirm_password){
    signuplist.add({
      "name": name,
      "email": email,
      "mobilenumber":mobilenumber,
      "password": password,
      "confirm password": confirm_password,
    });
  }

  List<Map<String, dynamic>> GetSignUpDetails(){
    return signuplist;
  }

}