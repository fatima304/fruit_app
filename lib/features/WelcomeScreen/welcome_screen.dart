import 'package:flutter/material.dart';
import 'package:fruit_app/features/WelcomeScreen/widgets/fix_body.dart';
import 'package:fruit_app/features/WelcomeScreen/widgets/big_container.dart';
import 'package:fruit_app/features/WelcomeScreen/widgets/small_container.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FixBody(
        widget1: BigContainer(
          mainImage: 'assets/basket.png',
        ),
        widget2: SmallContainer(
          textButton: 'Let\'s Continue',
          text: 'Get The Freshest Fruit Salad Combo',
        ),
      ),
    );
  }
}
