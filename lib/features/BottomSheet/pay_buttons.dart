import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/BottomSheet/bottom_sheet.dart';
import 'package:fruit_app/features/BottomSheet/card_details.dart';
import 'package:fruit_app/features/Complete/complete_screen.dart';
import 'package:fruit_app/features/Complete/widgets/outline_button.dart';

class PayButtons extends StatelessWidget {
  const PayButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutLineButton(
            textButton: 'Pay on delivery',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CompleteScreen(),
                ),
              );
            },
          ),
          OutLineButton(
            textButton: 'Pay with Card',
            onPressed: () {
              showDeliveryBottomSheet(
                context,
                text1: 'Card Holders Name',
                hintText1: 'Adolphus Chris',
                text2: 'Card Number',
                hintText2: '1234 5678 9012 1314',
                bottomWidget: const CardDetails(),
              );
            },
          ),
        ],
      ),
    );
  }
}
