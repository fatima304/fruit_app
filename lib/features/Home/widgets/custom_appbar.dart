import 'package:flutter/material.dart';
 import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          width: 22.w,
          height: 11.h,
          'assets/drawer.png',
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context){
                //   return OrderListScreen();
                // }));
              },
              child: Image.asset(
                width: 25.w,
                height: 25.h,
                'assets/icon.png',
              ),
            ),
            Text(
              'My basket',
              style: GoogleFonts.darkerGrotesque(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: ColorStyle.textColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
