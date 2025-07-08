import './utils/import_export.dart';

class NavigationController extends GetxController {
  void goToSecondScreen(UserModel user) {
    Get.to(() => SecondScreen(), arguments: user);
  }

  void goBackToFirstScreen() {
    Get.back();
  }
}
