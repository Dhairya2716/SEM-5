import '../utils/import_export.dart';

class GetxInsertStudentDatabase{

  static Database? _database;

  static Future<Database> get database async{
    if(_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  static Future<Database> _initDB() async{
    String path = join(await getDatabasesPath(), 'insert_student.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          '''
          CREATE TABLE INSERT_STUDENT(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          age TEXT NOT NULL
          )
          '''
        );
      },
    );
  }

}