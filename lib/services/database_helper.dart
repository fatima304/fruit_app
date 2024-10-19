import 'dart:async';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:fruit_app/models/food_model.dart';

class DatabaseHelper {
  static Database? _database;
  static final DatabaseHelper instance = DatabaseHelper.init();

  DatabaseHelper.init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'food_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(''' 
          CREATE TABLE food (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            price TEXT,
            foodImg TEXT,
            foodName TEXT,
            ingredient TEXT,
            cardColor INTEGER
          )
        ''');
      },
    );
  }

  Future<void> insertFood(CardModel card) async {
    final db = await database;
    await db.insert(
      'food',
      {
        'price': card.price,
        'foodImg': card.foodImg,
        'foodName': card.foodName,
        'ingredient': card.ingredient,
        'cardColor': card.cardColor.value,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<CardModel>> getAllFood() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('food');

    return List.generate(maps.length, (i) {
      return CardModel(
        price: maps[i]['price'],
        foodImg: maps[i]['foodImg'],
        foodName: maps[i]['foodName'],
        ingredient: maps[i]['ingredient'],
        cardColor: maps[i]['cardColor'] != null
            ? Color(maps[i]['cardColor'])
            : Colors.white,
      );
    });
  }

  Future<void> updateFood(CardModel card, int id) async {
    final db = await database;
    await db.update(
      'food',
      {
        'price': card.price,
        'foodImg': card.foodImg,
        'foodName': card.foodName,
        'ingredient': card.ingredient,
        'cardColor': card.cardColor.value,
      },
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteFood(int id) async {
    final db = await database;
    await db.delete(
      'food',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // New function to calculate total price based on quantity
  Future<double> calculatePrice(String foodName, int quantity) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'food',
      where: 'foodName = ?',
      whereArgs: [foodName],
    );

    if (maps.isNotEmpty) {
      final priceString = maps[0]['price'] as String;
      final price = double.parse(priceString.replaceAll(',', '')); // Remove any commas
      return price * quantity;
    }
    return 0.0; // Return 0 if the food item is not found
  }
}
