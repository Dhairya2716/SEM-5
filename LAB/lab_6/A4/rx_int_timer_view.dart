import '../../utils/import_export.dart';

class RxIntTimerView extends StatelessWidget {
  RxIntTimerView({super.key});

  RxIntTimerController controller = RxIntTimerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LAB6_A4_APPBAR_TITLE),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text(
                'Time left: ${controller.seconds.value}',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: controller.StartCountDown,
              child: Text('Start Cooldown'),
            ),
          ],
        ),
      ),
    );
  }
}
