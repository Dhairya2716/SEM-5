import '../../utils/import_export.dart';

class BindTextfieldUsingRxstringView extends StatelessWidget {
  BindTextfieldUsingRxstringView({super.key});

  final BindTextfieldUsingRxstringController controller =
      BindTextfieldUsingRxstringController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LAB6_A3_APPBAR_TITLE),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: controller.updateTextField,
              decoration: InputDecoration(
                labelText: 'RxString Data',
                hintText: 'Write some data',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => Text(
                  'Data typed: ${controller.inputText.value}',
                  style: const TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
