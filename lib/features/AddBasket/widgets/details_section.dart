import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/AddBasket/widgets/food_amount.dart';
import 'package:fruit_app/features/AddBasket/widgets/order_section.dart';
import 'package:fruit_app/features/AddBasket/widgets/ingredient_section.dart';

class DetailsSection extends StatefulWidget {
  const DetailsSection({
    super.key,
    required this.price,
    required this.foodName,
    required this.ingredient,
    required this.foodImg,
  });

  final String price;
  final String foodImg;
  final String foodName;
  final String ingredient;

  @override
  State<DetailsSection> createState() => _DetailsSectionState();
}

class _DetailsSectionState extends State<DetailsSection> {
  int quantity = 1; // Manage quantity here
  double totalPrice = 0.0;

  @override
  void initState() {
    super.initState();
    totalPrice = double.parse(widget.price.replaceAll(RegExp(r'[^\d.]'), ''));
  }

  void _onQuantityChanged(int newQuantity) {
    setState(() {
      quantity = newQuantity;
    });
  }

  void _onPriceChanged(double newPrice) {
    setState(() {
      totalPrice = newPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FoodAmount(
            price: widget.price,
            foodName: widget.foodName,
            onQuantityChanged: _onQuantityChanged, // Quantity change callback
            onPriceChanged: _onPriceChanged, // Price change callback
          ),
          const Divider(
            color: Color(0xffF3F3F3),
          ),
          IngredientSection(
            ingredient: widget.ingredient,
          ),
          const Divider(
            color: Color(0xffF3F3F3),
          ),
          OrderSection(
            foodName: widget.foodName,
            foodImg: widget.foodImg,
            // Passing price to OrderSection
          ),
        ],
      ),
    );
  }
}
