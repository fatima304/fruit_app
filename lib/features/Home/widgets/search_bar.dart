import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.w),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search for fruit salad combos',
        filled: true,
        fillColor: const Color(0xffF3F4F9),
        prefixIcon: Image.asset('assets/bi_search.png'),
        hintStyle: GoogleFonts.darkerGrotesque(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xff86869E),
        ),
      ),
    );
  }
}
