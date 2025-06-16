import './Utils/import_export.dart';

class CrudWithListView extends StatefulWidget {
  const CrudWithListView({super.key});

  @override
  State<CrudWithListView> createState() => _CrudWithListViewState();
}

class _CrudWithListViewState extends State<CrudWithListView> {

  final CrudController _crudController = CrudController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final users = _crudController.getUsers();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          APP_BAR_TITLE,
          style: TextStyle(color: Colors.redAccent, fontSize: 22.0),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: LABEL_NAME,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _ageController,
              decoration: const InputDecoration(
                labelText: LABEL_AGE,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _crudController.addUser(
                      _nameController.text,
                      _ageController.text,
                    );
                  });

                  _nameController.clear();
                  _ageController.clear();

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('User Add successfully')),
                  );
                },
                child: Text(ADD_USER)),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Registered User',
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10,),
            users.isEmpty ? Center(
              child: Padding(padding: const EdgeInsets.all(120.0),
                child: Text(
                  'No User Found',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            )
            : ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _crudController
                  .getUsers()
                  .length,
              itemBuilder: (context, index) {
                final user = _crudController.getUsers()[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name: ${user[DISPLAY_NAME]}'),
                        Text('Age: ${user[DISPLAY_AGE]}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
