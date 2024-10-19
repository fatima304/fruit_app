import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/Helper/constant.dart';

class BigContainer extends StatelessWidget {
  const BigContainer({
    super.key,
    required this.mainImage,
  });
  final String mainImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(35.w),
      width: double.infinity,
      color: ColorStyle.primayColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/small.png',
              width: 50.w,
              height: 37.52.h,
            ),
          ),
          Flexible(
            child: Image.asset(
              mainImage,
              width: 301.w,
              height: 260.h,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Image.asset(
            'assets/ellipse.png',
            width: 301.w,
            height: 12.h,
          ),
        ],
      ),
    );
  }
}
