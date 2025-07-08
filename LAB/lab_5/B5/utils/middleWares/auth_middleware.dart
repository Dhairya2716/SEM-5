import '../import_export.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  //change to true to get access to screen2
  bool isAuthenticated = true;

  @override
  RouteSettings? redirect(String? route) {
    if (!isAuthenticated && route == '/screen2') {
      Get.snackbar(
        'Access Denied',
        'You need to be authenticated to access this page',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return const RouteSettings(name: '/');
    }
    return null;
  }
}