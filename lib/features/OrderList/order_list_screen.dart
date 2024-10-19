import 'package:flutter/material.dart';
import 'package:fruit_app/features/OrderList/widgets/orderlist.dart';
import 'package:fruit_app/features/OrderList/widgets/shared_screen.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({
    super.key,
    required this.foodImg,
    required this.foodName,
  });
  final String foodImg;
  final String foodName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SharedScreen(
        text: 'My Basket',
        widget1: Orderlist(
          foodImg: foodImg,
          foodName: foodName,
        ),
      ),
    );
  }
}
