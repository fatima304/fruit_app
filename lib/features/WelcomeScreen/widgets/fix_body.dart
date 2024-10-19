
import 'package:flutter/material.dart';

class FixBody extends StatelessWidget {
  const FixBody({
    super.key,
    required this.widget1,
    required this.widget2,
  });
  final Widget widget1;
  final Widget widget2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 4, child: widget1),
        Expanded(flex: 3, child: widget2),
      ],
    );
  }
}
