import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextComplete extends StatelessWidget {
  const TextComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Congratulations!!!',
          style: GoogleFonts.darkerGrotesque(
            fontSize: 32.sp,
            fontWeight: FontWeight.w600,
            color: ColorStyle.textColor,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Your order have been taken and',
          style: GoogleFonts.darkerGrotesque(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: ColorStyle.textColor,
          ),
        ),
        Text(
          'is being attended to',
          style: GoogleFonts.darkerGrotesque(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: ColorStyle.textColor,
          ),
        ),
      ],
    );
  }
}
