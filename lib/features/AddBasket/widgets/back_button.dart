import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomBackButton extends StatelessWidget {
  CustomBackButton({
    required this.onPressed,
    super.key,
  });
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton.icon(
          style: ButtonStyle(
            fixedSize: WidgetStatePropertyAll(Size(120.w, 35.h)),
            backgroundColor: const WidgetStatePropertyAll(Colors.white),
          ),
          icon: Image.asset('assets/arrow.png'),
          onPressed: onPressed,
          label: Text(
            'Go back',
            style: GoogleFonts.darkerGrotesque(
              fontSize: 19.sp,
              fontWeight: FontWeight.w500,
              color: ColorStyle.textColor,
            ),
          ),
        ),
      ],
    );
  }
}
