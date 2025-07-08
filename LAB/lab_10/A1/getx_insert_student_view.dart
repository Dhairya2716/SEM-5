import './utils/import_export.dart';

class GetxInsertStudentView extends StatelessWidget {
  const GetxInsertStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GetxInsertStudentController());

    final nameController = TextEditingController();
    final ageController = TextEditingController();

    void showStudentDialog([insertStudent? student]) {
      if (student != null) {
        nameController.text = student.name;
        ageController.text = student.age;
      } else {
        nameController.clear();
        ageController.clear();
      }
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(student == null ? 'Add Student' : 'Edit Student'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text('Name'),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  controller: ageController,
                  decoration: InputDecoration(
                    label: Text('Age'),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Back'),
            ),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    ageController.text.isNotEmpty) {
                  final studentData = insertStudent(
                    id: student?.id,
                    name: nameController.text,
                    age: ageController.text,
                  );
                  if (student == null)
                    controller.addStudent(studentData);
                  else
                    controller.updateStudent(studentData);
                  Navigator.pop(context);
                }
              },
              child: Text(student == null ? 'Add' : 'Update'),
            ),
          ],
        ),
      );
    }

    ;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Insert Student Data into Sqflite using Getx',
          style: TextStyle(
            color: Colors.cyan,
          ),
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.student.length,
          itemBuilder: (context, index) {
            final stu = controller.student[index];
            return ListTile(
              title: Text(stu.name),
              subtitle: Text(stu.age),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () => showStudentDialog(stu),
                    icon: Icon(Icons.edit),
                  ),
                  IconButton(
                    // onPressed: () => controller.deleteStudent(stu.id!),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                              'Are you sure you want to delete this student data?',style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                          ),),
                          actions: [
                            TextButton(
                              onPressed: () => Get.back(),
                              child: Text('NO'),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  controller.deleteStudent(stu.id!);
                                  Get.back();
                                },
                                child: Text("YES"))
                          ],
                        ),
                      );
                    },
                    icon: Icon(Icons.delete),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: showStudentDialog,
            icon: Icon(Icons.add),
            label: const Text('Add Student'),
          ),
        ],
      ),
    );
  }
}
