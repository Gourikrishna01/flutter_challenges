import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/task.dart';

class Notes {
  static Database? _db;
  static final Notes instance = Notes._constructor();
  final String _tasksTableName = 'tasks';
  final String _tasksIdColumnName = 'id';
  final String _taskTitleColumnName = 'title';
  final String _taskDescriptionColumnName = 'description';
  Notes._constructor();
  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await getDatabase();
    return _db!;
  }

  Future<Database> getDatabase() async {
    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, "Note_db.db");
    final database = await openDatabase(
      databasePath,
      version: 1,
      onCreate: (db, version) {
        db.execute(
            '''CREATE TABLE $_tasksTableName($_tasksIdColumnName INTEGER PRIMARY KEY,$_taskTitleColumnName TEXT NOT NULL ,$_taskDescriptionColumnName TEXT NOT NULL
        )
        ''');
      },
    );
    return database;
  }

  void addTask(String title, String description) async {
    final db = await database;
    await db.insert(_tasksTableName,
        {_taskTitleColumnName: title, _taskDescriptionColumnName: description});
  }

  Future<List<Task>?> getTasks() async {
    final db = await database;
    final data = await db.query(_tasksTableName);
    List<Task> tasks = data
        .map((e) => Task(
            id: e["id"] as int,
            title: e["title"] as String,
            description: e["description"] as String))
        .toList();
    return tasks;
  }
}
