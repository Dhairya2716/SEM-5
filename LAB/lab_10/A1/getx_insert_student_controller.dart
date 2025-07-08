import './utils/import_export.dart';

class GetxInsertStudentController extends GetxController {
  RxList<insertStudent> student = <insertStudent>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchAllStudents();
  }

  Future<void> fetchAllStudents() {
    final db = GetxInsertStudentDatabase.database;
    return db.then((database) async {
      final result = await database.query("insert_student");
      student.value =
          result.map((data) => insertStudent.fromMap(data)).toList();
    });
  }

  Future<void> addStudent(insertStudent students) async {
    final db = await GetxInsertStudentDatabase.database;
    db.insert("insert_student", students.toMap());
    fetchAllStudents();
  }

  Future<void> updateStudent(insertStudent students) async {
    final db = await GetxInsertStudentDatabase.database;
    db.update("insert_student", students.toMap(),
        where: 'id = ?', whereArgs: [students.id]);
    fetchAllStudents();
  }

  Future<void> deleteStudent(int id) async {
    final db = await GetxInsertStudentDatabase.database;
    db.delete("insert_student", where: 'id = ?', whereArgs: [id]);
    fetchAllStudents();
  }
}
