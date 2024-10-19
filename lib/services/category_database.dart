import 'package:sqflite/sqflite.dart';
 import 'package:fruit_app/models/food_model.dart';

class DatabaseCat {
  static Database? _database;
  static final DatabaseCat instance = DatabaseCat.intit();

  DatabaseCat.intit();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    return await openDatabase('cat_database.db', version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
      CREATE TABLE food(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        price TEXT,
        foodImg TEXT,
        foodName TEXT,
        cardColor INTEGER,
        ingredient TEXT
      )
    ''');
    });
  }

  Future<int> insertFood(CardModel food) async {
    final db = await instance.database;
    return await db.insert('food', food.toMap());
  }

  Future<List<CardModel>> fetchFoods() async {
    final db = await instance.database;
    final result = await db.query('food');

    return result.map((json) => CardModel.fromMap(json)).toList();
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
