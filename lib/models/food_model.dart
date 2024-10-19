import 'package:flutter/material.dart';

class CardModel {
  final String price;
  final String foodImg;
  // final String? category;
  final String foodName;
  final Color cardColor;
  final String ingredient;

  CardModel({
    required this.price,
    required this.foodImg,
    required this.foodName,
    required this.ingredient,
    // this.category = 'Hottiest',
    this.cardColor = Colors.white,
  });
  Map<String, dynamic> toMap() {
    return {
      'price': price,
      'foodImg': foodImg,
      'foodName': foodName,
      // 'category': category,
      'cardColor': cardColor.value,
      'ingredient': ingredient,
    };
  }

  factory CardModel.fromMap(Map<String, dynamic> map) {
    return CardModel(
      price: map['price'],
      foodImg: map['foodImg'],
      foodName: map['foodName'],
      cardColor: Color(map['cardColor']),
      ingredient: map['ingredient'],
            // category: map['category'],

    );
  }
}

List<CardModel> foodModel = [
  CardModel(
      price: '2,000',
      foodImg: 'assets/1.png',
      foodName: 'Honey lime combo',
      ingredient:
          'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint'),
  CardModel(
    price: '8,000',
    foodImg: 'assets/2.png',
    foodName: 'Berry mango combo',
    ingredient:
        'Blueberries, Strawberries, Mango, Greek Yogurt, Honey, Granola',
  ),
  CardModel(
    price: '3,000',
    foodImg: 'assets/food3.png',
    foodName: 'Golden brown waffle',
    ingredient:
        'Whole Wheat Flour, Eggs, Almond Milk, Baking Powder, Maple Syrup, Fresh Berries.',
  ),
  CardModel(
    price: '5,000',
    foodImg: 'assets/food4.png',
    foodName: 'Milk & pumpkin seeds',
    ingredient: 'Almond Milk, Pumpkin Seeds, Chia Seeds, Honey, Cinnamon.',
  ),
  CardModel(
    price: '6,000',
    foodImg: 'assets/food5.png',
    foodName: 'Berries & Muesli bowl',
    ingredient:
        'Rolled Oats, Blueberries, Raspberries, Almond Milk, Honey, Chopped Almonds.',
  ),
];
