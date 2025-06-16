import './Utils/import_export.dart';

class CrudController{

  final CrudModel _crudModel = CrudModel();

  void addUser(String name, String age) => _crudModel.AddUser(name, age);

  void deleteUser(int index) => _crudModel.DeleteUser(index);

  void updateUser(int index, String new_name, String new_age) => _crudModel.UpdateUser(index, new_name, new_age);

  List<Map<String, dynamic>> getUsers() {
      return _crudModel.GetDetails();
    }
}