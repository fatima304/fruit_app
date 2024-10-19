import 'package:flutter/material.dart';
import 'package:fruit_app/features/AuthScreen/auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    const FruitHub(),
  );
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xffFFA451),
            ),
            useMaterial3: true,
          ),
          home: const AuthScreen(),
        );
      },
    );
  }
}
