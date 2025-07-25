import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import './rest_api_model.dart';
import './rest_api_services.dart';

class RestApiController extends GetxController{

  RxList<UserModel> users = <UserModel>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit(){
    super.onInit();
    fetchUserData();
  }

  void fetchUserData() async{

    try{
      isLoading.value = true;

      http.Response response = await ApiService.fetchUsers();


      // if(){}
    }
    catch(e){
      // Get.snackbar("Error", message.e);
    }

  }

  // void fetchUserData() async {
  //   try{
  //     isLoading.value = true;
  //     final result = await ApiService.fetchUsers();
  //     users.value = result;
  //   }
  //   catch(e){
  //     print("Error: ${e}");
  //   }
  //   finally{
  //     isLoading.value = false;
  //   }
  // }
}