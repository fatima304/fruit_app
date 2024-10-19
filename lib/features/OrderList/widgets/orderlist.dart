import 'package:flutter/material.dart';
import '../../BottomSheet/bottom_sheet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/BottomSheet/pay_buttons.dart';
import 'package:fruit_app/features/WelcomeScreen/widgets/button.dart';
import 'package:fruit_app/features/OrderList/widgets/order_listview.dart';

class Orderlist extends StatelessWidget {
  const Orderlist({
    super.key,
    required this.foodImg,
    required this.foodName,
  });
  final String foodImg;
  final String foodName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OrderListview(
            foodImg: foodImg,
            foodName: foodName,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      style: GoogleFonts.darkerGrotesque(
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorStyle.textColor,
                      ),
                    ),
                    Text(
                      '₦ 60,000',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                        color: ColorStyle.textColor,
                      ),
                    ),
                  ],
                ),
                Button(
                  textButton: 'Checkout',
                  onPressed: () {
                    showDeliveryBottomSheet(context,
                        text1: 'Delivery address',
                        hintText1: '10th avenue, Lekki, Lagos State',
                        text2: 'Number we can call',
                        hintText2: '09090605708',
                        bottomWidget: const PayButtons());
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
