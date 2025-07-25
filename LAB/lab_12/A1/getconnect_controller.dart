import './utils/import_export.dart';

class GetconnectController extends GetxController {
  RxList<GetconnectModel> users = <GetconnectModel>[].obs;
  RxBool isLoading = false.obs;

  final GetconnectServices api = GetconnectServices();

  @override
  void onInit() {
    super.onInit();
    fetchAllUsers();
  }

  void fetchAllUsers() async {
    isLoading.value = true;
    final response = await api.getUser();
    if (response.isOk) {
      List data = response.body['data'] ?? [];
      users.value = data.map((e) => GetconnectModel.fromJson(e)).toList();
    } else {
      print("Failed to load users: ${response.statusCode}");
    }
    isLoading.value = false;
  }

  void createUser() async {
    GetconnectModel user = GetconnectModel(id: " ",name: "Dhairya", age: "21", city: "Jamnagar");
    final response = await api.postUser(user);
    if (response.isOk) {
      print("User created: ${response.body}");
      fetchAllUsers();
    } else {
      print("Failed to create user");
    }
  }

  void updateUser(int id) async {
    GetconnectModel user = GetconnectModel(id: " ",name: "Updated Name", age: "25", city:"Rajkot");
    final response = await api.putUser(id, user);
    if (response.isOk) {
      print("User updated: ${response.body}");
      fetchAllUsers();
    } else {
      print("Failed to update user");
    }
  }
}
