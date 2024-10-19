import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class OrderListTile extends StatelessWidget {
  const OrderListTile({
    super.key,
    required this.img,
    required this.imgColor,
    required this.title,
    this.subTitle,
    this.trailingWidget,
    required this.padding,
  });
  final String img;
  final Color imgColor;
  final double padding;
  final String title;
  final String? subTitle;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: padding.h),
          child: ListTile(
            leading: Container(
              width: 65.w,
              height: 90.h,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: imgColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Image.asset(
                img,
                width: 40.w,
                height: 40.h,
              ),
            ),
            title: Text(
              title,
              style: GoogleFonts.darkerGrotesque(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            subtitle: subTitle != null
                ? Text(
                    subTitle!,
                    style: GoogleFonts.darkerGrotesque(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )
                : null,
            trailing: trailingWidget ??
                Text(
                  '₦ 20,000',
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorStyle.textColor,
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
