import '../../import_export.dart';


class FavUnfavRxlistController extends GetxController {

  var items = <FavUnfavRxlistModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    items.addAll([
      FavUnfavRxlistModel(name: "Item 1"),
      FavUnfavRxlistModel(name: "Item 2"),
      FavUnfavRxlistModel(name: "Item 3"),
    ]);
  }

  void addItem(String name) {
    items.add(FavUnfavRxlistModel(name: name));
  }
}
