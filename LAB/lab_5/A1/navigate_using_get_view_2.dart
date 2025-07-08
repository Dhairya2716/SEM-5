import './utils/import_export.dart';

class SecondScreen extends StatelessWidget {
  final NavigationController navController = Get.find();

  @override
  Widget build(BuildContext context) {
    final UserModel user = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: Text(APPBAR_SECOND_SCREEN_TITLE)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome, ${user.name}!", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: navController.goBackToFirstScreen,
              child: Text(SECOND_SCREEN_ELEVATED_BUTTON),
            ),
          ],
        ),
      ),
    );
  }
}
