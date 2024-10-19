import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class OutLineButton extends StatelessWidget {
  OutLineButton({
    super.key,
    required this.onPressed,
    required this.textButton,
  });
  final String textButton;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: ColorStyle.primayColor),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        fixedSize: Size(150.w, 56.h),
      ),
      child: Text(
        textButton,
        style: GoogleFonts.darkerGrotesque(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: ColorStyle.primayColor,
        ),
      ),
    );
  }
}
