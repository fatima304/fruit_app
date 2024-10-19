import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
    required this.hintText,
    required this.controller,
  });

  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: const Color(0xffF3F1F1),
        hintStyle: GoogleFonts.darkerGrotesque(
          fontSize: 21.sp,
          color: const Color(0xffC2BDBD),
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorStyle.primayColor,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      ),
    );
  }
}
