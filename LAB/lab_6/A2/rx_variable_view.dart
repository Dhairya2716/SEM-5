import '../../utils/import_export.dart';

class RxVariableView extends StatelessWidget {
  const RxVariableView({super.key});

  @override
  Widget build(BuildContext context) {
    final RxVariableController controller = Get.put(RxVariableController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(LAB6_A2_APPBAR_TITLE),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              final count = 0;
              return Text(
                'Count: ${controller.count.value}',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              );
            }),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return Text(
                controller.message.value,
                style: const TextStyle(fontSize: 16),
              );
            }),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: controller.increment,
              child: const Text("Increment"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: controller.reset,
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
