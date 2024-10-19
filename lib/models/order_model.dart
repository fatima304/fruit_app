import 'package:flutter/material.dart';

class OrderModel {
  final String name;
  final String imagePath;
  final double price;
  final int quantity;
  final Color color;

  OrderModel(
      {required this.quantity,required this.color,required this.name, required this.imagePath, required this.price});
}
