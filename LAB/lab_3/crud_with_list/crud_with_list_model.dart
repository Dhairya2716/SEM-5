class CrudModel{
  static final List<Map<String, dynamic>> UserList = [];

  void AddUser(String name, String age){
    UserList.add({
      "name":name,
      "age":age
    });
  }

  void DeleteUser(int index){
      UserList.removeAt(index);
  }

  void UpdateUser(int index, String new_name, String new_age){
    UserList[index] = {
      "name": new_name,
      "age": new_age
    };
  }

  List<Map<String, dynamic>> GetDetails(){
    return UserList;
  }

}