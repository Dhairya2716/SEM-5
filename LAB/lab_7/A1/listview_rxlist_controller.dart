import '../../import_export.dart';

class ListController extends GetxController {

  var items = <ItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    items.addAll([
      ItemModel(name: "Item 1"),
      ItemModel(name: "Item 2"),
      ItemModel(name: "Item 3"),
    ]);
  }

  void addItem(String name) {
    items.add(ItemModel(name: name));
  }
}
