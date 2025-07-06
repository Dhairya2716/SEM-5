import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'crud_multiple_tables_model.dart';
import './crud_multiple_tables_database.dart';

class DatabaseController extends GetxController {
  RxList<University> universities = <University>[].obs;
  RxList<SQLiteDatabaseModel> students = <SQLiteDatabaseModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUniversity();
    fetchStudents();
  }

  Future<void> fetchStudents() {
    final db = SQLiteDatabase.database;
    return db.then((database) async {
      final result = await database.query("Student");
      students.value =
          result.map((json) => SQLiteDatabaseModel.fromMap(json)).toList();
    });
  }

  Future<void> fetchUniversity() {
    final db = SQLiteDatabase.database;
    return db.then((database) async {
      final result = await database.query("University");
      universities.value =
          result.map((json) => University.fromMap(json)).toList();
    });
  }

  Future<void> addStudent(SQLiteDatabaseModel student) async {
    final db = await SQLiteDatabase.database;
    await db.insert("Student", student.toMap());
    fetchStudents();
  }

  Future<void> addUniversity(University university) async {
    final db = await SQLiteDatabase.database;
    await db.insert("University", university.toMap());
    fetchUniversity();
  }

  Future<void> deleteStudent(int id) async {
    final db = await SQLiteDatabase.database;
    await db.delete("Student", where: "id = ?", whereArgs: [id]);
    fetchStudents();
  }

  Future<void> deleteUniversity(int universityId) async {
    final db = await SQLiteDatabase.database;
    await db.delete('university', where: 'id = ?', whereArgs: [universityId]);
    fetchUniversity();
  }

  Future<bool> canDeleteUniversity(int universityId) async {
    final db = await SQLiteDatabase.database;
    final result = await db.query(
      'Student',
      where: 'universityId = ?',
      whereArgs: [universityId],
    );
    return result.isEmpty;
  }

  /// Delete with warning dialog if students are linked
  Future<void> deleteUniversityWithWarning(int universityId) async {
    bool canDelete = await canDeleteUniversity(universityId);
    if (!canDelete) {
      Get.dialog(
        AlertDialog(
          title: Text('Warning'),
          content: Text('Cannot delete university. Students are associated with it.'),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: Text('OK'),
            ),
          ],
        ),
      );
      return;
    }

    await deleteUniversity(universityId);
    Get.snackbar('Deleted', 'University deleted successfully');
  }


  Future<void> updateStudent(SQLiteDatabaseModel student) async {
    final db = await SQLiteDatabase.database;
    await db.update("Student", student.toMap(),
        where: "id = ?", whereArgs: [student.id]);
    fetchStudents();
  }

  Future<void> updateUniversity(University university) async {
    final db = await SQLiteDatabase.database;
    await db.update("University", university.toMap(),
        where: "id = ?", whereArgs: [university.id]);
    fetchUniversity();
  }
}