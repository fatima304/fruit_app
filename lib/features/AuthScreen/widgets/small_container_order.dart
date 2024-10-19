import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/Home/home_screen.dart';
import 'package:fruit_app/features/WelcomeScreen/widgets/button.dart';
import 'package:fruit_app/features/AuthScreen/widgets/shared_widget.dart';

class SmallContainerOrder extends StatelessWidget {
  SmallContainerOrder({super.key});

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 56.h,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SharedWidget(
            text: 'What is your firstname?',
            hintText: 'Tony',
            textController: _textController,
          ),
          SizedBox(
            height: 50.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Button(
              buttonSize: 327.w,
              textButton: 'Start Ordering',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        HomeScreen(enteredText: _textController.text),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
