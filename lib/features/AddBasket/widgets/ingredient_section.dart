import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';

class IngredientSection extends StatelessWidget {
  const IngredientSection({super.key, required this.ingredient});

  final String ingredient;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'One Pack Contains:',
          style: GoogleFonts.darkerGrotesque(
            fontSize: 23.sp,
            fontWeight: FontWeight.w600,
            color: ColorStyle.textColor,
          ),
        ),
        const Divider(
          thickness: 2,
          indent: 3,
          endIndent: 160,
          color: ColorStyle.primayColor,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          ingredient,
          style: GoogleFonts.darkerGrotesque(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: ColorStyle.textColor,
          ),
        ),
      ],
    );
  }
}
