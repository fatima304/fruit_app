import 'package:flutter/material.dart';
import 'package:fruit_app/features/OrderList/order_list_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/WelcomeScreen/widgets/button.dart';

class OrderSection extends StatelessWidget {
  const OrderSection(
      {super.key, required this.foodImg, required this.foodName});
  final String foodImg;
  final String foodName;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'If you\'re in search of a delicious and healthy meal today, our vibrant selection of fruit salads, hearty bowls, and delightful combos is the perfect choice to satisfy your cravings and fuel your day!',
          style: GoogleFonts.darkerGrotesque(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: ColorStyle.textColor,
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/fav.png'),
            Button(
                textButton: 'Add to basket',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderListScreen(
                        foodImg: foodImg,
                        foodName: foodName,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ],
    );
  }
}
