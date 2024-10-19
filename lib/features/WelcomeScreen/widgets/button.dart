import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    this.buttonSize,
    required this.onPressed,
    required this.textButton,
  });
  final double? buttonSize;
  final String textButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(
          0xffFFA451,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        fixedSize: Size(buttonSize ?? 220.w, 56.h),
      ),
      child: Text(
        textButton,
        style: GoogleFonts.darkerGrotesque(
          fontSize: 21.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
