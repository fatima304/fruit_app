import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class AuthDatabase {
  static Database? _database;
  static final AuthDatabase instance = AuthDatabase.intit();

  AuthDatabase.intit();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'auth_database.db');
    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
      CREATE TABLE users(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL
      )
    ''');
    });
  }

   Future<String> insertUser(String name) async {
    final db = await database;
    await db.insert(
      'users',
      {'name': name},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return name;
  }
}
