import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/AddBasket/widgets/back_button.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.imgDetails});

  final String imgDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Flexible(
            child: Container(
              width: double.infinity,
              color: const Color(0xffFFA451),
              child: Image.asset(
                width: 176.w,
                height: 176.h,
                imgDetails,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
