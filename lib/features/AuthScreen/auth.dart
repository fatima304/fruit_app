import 'package:flutter/material.dart';
import 'package:fruit_app/features/WelcomeScreen/widgets/fix_body.dart';
import 'package:fruit_app/features/WelcomeScreen/widgets/big_container.dart';
import 'package:fruit_app/features/AuthScreen/widgets/small_container_order.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FixBody(
          widget1: const BigContainer(
            mainImage: 'assets/basket2.png',
          ),
          widget2: SingleChildScrollView(
            child: SmallContainerOrder(),
          ),
        ),
      ),
    );
  }
}
