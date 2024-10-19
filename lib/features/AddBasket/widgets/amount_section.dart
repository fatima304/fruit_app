import 'package:flutter/material.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:fruit_app/features/AddBasket/widgets/count_section.dart';

class AmountSection extends StatefulWidget {
  final String price;
  final ValueChanged<int> onQuantityChanged;
  final ValueChanged<double> onPriceChanged;


  const AmountSection({super.key, required this.price, required this.onQuantityChanged, required this.onPriceChanged});

  @override
  State<AmountSection> createState() => _AmountSectionState();
}

class _AmountSectionState extends State<AmountSection> {
  int foodNum = 1;

  double get pricePerItem {
    String numericPrice = widget.price.replaceAll(RegExp(r'[^\d.]'), '');
    double newPrice = double.parse(numericPrice);
    return newPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CountSection(
          foodNum: foodNum,
          onCountChanged: (newCount) {
            setState(() {
              foodNum = newCount;
            });
          },
        ),
        Text(
          '₦ ${(pricePerItem * foodNum).toStringAsFixed(2)}',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: ColorStyle.textColor,
          ),
        ),
      ],
    );
  }
}
