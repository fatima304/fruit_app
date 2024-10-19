import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:fruit_app/features/Complete/complete_screen.dart';
import 'package:fruit_app/features/Complete/widgets/outline_button.dart';
import 'package:fruit_app/features/AuthScreen/widgets/shared_widget.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
              child: SharedWidget(
                text: 'Date',
                hintText: '10/30',
              ),
            ),
            SizedBox(width: 16.w),
            const Expanded(
              child: SharedWidget(
                text: 'CCV',
                hintText: '123',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          height: 90.h,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 120.w, vertical: 22.h),
          decoration: BoxDecoration(
            color: ColorStyle.primayColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r),
              topRight: Radius.circular(24.r),
            ),
          ),
          child: OutLineButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CompleteScreen(),
                ),
              );
            },
            textButton: 'Complete Order',
          ),
        ),
      ],
    );
  }
}
