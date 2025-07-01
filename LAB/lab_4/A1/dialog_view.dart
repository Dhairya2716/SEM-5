import './utils/import_export.dart';


class DialogView extends StatelessWidget {
  DialogView({super.key});

  final DialogController dialogController = Get.put(DialogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GetX Dialog (MVC)")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            dialogController.ShowAlertDialogBox();
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
