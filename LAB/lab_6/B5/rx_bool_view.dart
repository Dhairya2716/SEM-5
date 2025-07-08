import '../../utils/import_export.dart';

class RxBoolView extends StatelessWidget {
   RxBoolView({super.key});

  final RxBoolController controller = RxBoolController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LAB6_B5_APPBAR_TITLE),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => AnimatedOpacity(
                opacity: controller.isVisible.value ? 0.0 : 1.0,
                duration: const Duration(seconds: 1),
                child: const Text(
                  'May I come in..',
                  style:
                      TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: controller.toggleVisibility,
              child: Obx(
                () => Text(
                  controller.isVisible.value ? 'Hide' : 'Show',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
