import 'package:flutter/material.dart';
import 'package:fruit_app/features/BottomSheet/bottom_sheet_details.dart';

void showDeliveryBottomSheet(
  BuildContext context, {
  required String text1,
  required String hintText1,
  required String text2,
  required String hintText2,
  required Widget bottomWidget,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    builder: (context) {
      return BottomSheetDetails(
        text1: text1,
        hintText1: hintText1,
        text2: text2,
        hintText2: hintText2,
        bottomWidget: bottomWidget,
      );
    },
  );
}
