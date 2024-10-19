import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:fruit_app/features/AuthScreen/auth.dart';
import 'package:fruit_app/features/WelcomeScreen/widgets/button.dart';

class SmallContainer extends StatelessWidget {
  const SmallContainer({
    super.key,
    required this.text,
    required this.textButton,
  });

  final String text;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 56.h, left: 24.w, right: 24.w),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.darkerGrotesque(
              fontSize: 23.sp,
              color: ColorStyle.textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
            style: GoogleFonts.darkerGrotesque(
              fontSize: 19.sp,
              color: const Color(0xff5d577e),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Button(
              buttonSize: 327.w,
              textButton: textButton,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AuthScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
