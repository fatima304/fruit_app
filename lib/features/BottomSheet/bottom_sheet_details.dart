import 'package:flutter/material.dart';
import 'package:fruit_app/features/AuthScreen/widgets/shared_widget.dart';

class BottomSheetDetails extends StatelessWidget {
  const BottomSheetDetails({
    super.key,
    required this.text1,
    required this.text2,
    required this.hintText1,
    required this.hintText2,
    required this.bottomWidget,
  });
  final String text1;
  final String text2;
  final String hintText1;
  final String hintText2;

  final Widget bottomWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 34),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SharedWidget(
            text: text1,
            hintText: hintText1,
          ),
          const SizedBox(height: 25),
          SharedWidget(
            text: text2,
            hintText: hintText2,
          ),
          const SizedBox(height: 30),
          bottomWidget,
        ],
      ),
    );
  }
}
