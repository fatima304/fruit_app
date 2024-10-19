import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';

class CountSection extends StatelessWidget {
  final int foodNum;
  final ValueChanged<int> onCountChanged;

  const CountSection({
    super.key,
    required this.foodNum,
    required this.onCountChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            int newCount = foodNum > 1 ? foodNum - 1 : 1;
            onCountChanged(newCount);
          },
          child: Image.asset('assets/sub.png'),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          '$foodNum',
          style: GoogleFonts.darkerGrotesque(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: ColorStyle.textColor,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            int newCount = foodNum + 1;
            onCountChanged(newCount);
          },
          child: Image.asset('assets/add.png'),
        ),
      ],
    );
  }
}
