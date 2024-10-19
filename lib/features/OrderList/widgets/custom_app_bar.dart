import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:fruit_app/features/AddBasket/widgets/back_button.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({super.key, required this.textBar});

  final String textBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
      decoration: const BoxDecoration(
        color: ColorStyle.primayColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomBackButton(onPressed: () {
            Navigator.pop(context);
          }),
          const SizedBox(
            width: 15,
          ),
          Text(
            textBar,
            style: GoogleFonts.darkerGrotesque(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
