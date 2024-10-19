import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:fruit_app/features/AuthScreen/widgets/textfield.dart';

class SharedWidget extends StatelessWidget {
  const SharedWidget({
    super.key,
    required this.text,
    required this.hintText,
    this.textController,
  });

  final String text;
  final String hintText;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.darkerGrotesque(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              color: ColorStyle.textColor,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          TextForm(
            controller: textController,
            hintText: hintText,
          ),
        ],
      ),
    );
  }
}
