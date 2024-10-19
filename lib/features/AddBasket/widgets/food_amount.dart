import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:fruit_app/features/AddBasket/widgets/amount_section.dart';

class FoodAmount extends StatelessWidget {
  const FoodAmount({
    super.key,
    required this.foodName,
    required this.price,
    required this.onQuantityChanged,
    required this.onPriceChanged,
  });

  final String price;
  final String foodName;
  final ValueChanged<int> onQuantityChanged;
  final ValueChanged<double> onPriceChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          foodName,
          style: GoogleFonts.darkerGrotesque(
            fontSize: 33,
            fontWeight: FontWeight.w700,
            color: ColorStyle.textColor,
          ),
        ),
        const SizedBox(height: 20),
        AmountSection(
          price: price,
          onQuantityChanged: onQuantityChanged,
          onPriceChanged: onPriceChanged,
        ),
      ],
    );
  }
}
