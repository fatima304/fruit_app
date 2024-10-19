import 'package:flutter/material.dart';
import 'package:fruit_app/features/TrackOrder/track_screen.dart';
import 'package:fruit_app/features/WelcomeScreen/widgets/button.dart';
import 'package:fruit_app/features/Complete/widgets/text_complete.dart';
import 'package:fruit_app/features/Complete/widgets/outline_button.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/complete.png'),
            const TextComplete(),
            Button(
              textButton: 'Track order',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrackOrderScreen(),
                  ),
                );
              },
            ),
            OutLineButton(
              textButton: 'Continue shopping',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
