// lib/views/home_view.dart

import '../../import_export.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: HomeView(),
    ),
  );
}

class HomeView extends StatelessWidget {
  final ListController controller = Get.find<ListController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(APP_BAR_TITLE)),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: controller.items.length,
                itemBuilder: (context, index) {
                  final item = controller.items[index];
                  return ListTile(
                    title: Text(item.name),
                  );
                },
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                final newItem = 'Item ${controller.items.length + 1}';
                controller.addItem(newItem);
              },
              child: Text(TEXT_BUTTON),
            ),
          )
        ],
      ),
    );
  }
}
