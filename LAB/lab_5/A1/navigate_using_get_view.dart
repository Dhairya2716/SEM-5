import './utils/import_export.dart';

class FirstScreen extends StatelessWidget {
  final NavigationController navController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(APPBAR_FIRST_SCREEN_TITLE)),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            UserModel user = UserModel(name: NAME);
            navController.goToSecondScreen(user);
          },
          child: Text(FIRST_SCREEN_ELEVATED_BUTTON),
        ),
      ),
    );
  }
}

