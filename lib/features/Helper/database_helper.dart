import 'package:sqflite/sqflite.dart';

class DataHelper {
  String dbName = 'fruit.db';
  late Database database;

  List<Map> fruits = [];

  Future<void> createDb() async {
    openDatabase(
      dbName,
      version: 1,
      onCreate: (database, version) async {
        await database.execute("""
        CREATE TABLE Fruit (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT, 
        description TEXT  , 
        price INTEGER)
        """);
      },
      onOpen: (database) {},
    ).then((value) {
      database = value;
    });
  }

  Future<void> insertToDB(
      {required String name,
      required String description,
      required int price}) async {
    await database.transaction(
      (fruit) => fruit.rawInsert("""
            INSERT INTO Fruit
            (name, description , price) 
            VALUES(?,? ,?)
            """, [name, description, price]),
    );
  }

  Future<List<Map>> getData() async {
    fruits = await database.rawQuery("""
        SELECT id , name , description , price
        FROM Fruit 
        ORDER BY id DESC
        """);
    return fruits;
  }

  Future<void> deletedata({required int id}) async {
    await database.rawDelete("""
        DELETE FROM Fruit 
        WHERE id = ?
        """, [id]);
  }
}
