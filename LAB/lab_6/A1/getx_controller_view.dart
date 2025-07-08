import '../../utils/import_export.dart';

class GetxControllerView extends StatefulWidget {
  const GetxControllerView({super.key});

  @override
  State<GetxControllerView> createState() => _GetxControllerViewState();
}

class _GetxControllerViewState extends State<GetxControllerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GetxController with non-reactive variables',
          style: TextStyle(color: Color(0xFFC01527)),
        ),
        backgroundColor: Colors.tealAccent,
      ),
    );
  }
}
