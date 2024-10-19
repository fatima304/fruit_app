import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/cubit/product_cubit/product_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/Home/widgets/custom_appbar.dart';
import 'package:fruit_app/features/Home/widgets/header_section.dart';
import 'package:fruit_app/features/Home/widgets/recommend_section.dart';
import 'package:fruit_app/features/Home/widgets/food_category_tab_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.enteredText});

  final String enteredText;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProductCubit()
        ..createDatabase()
        ..addFood()
        ..fetchFoods(),
      child: Scaffold(
        backgroundColor: const Color(0xfff8f8f8),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
            child: Column(
              children: [
                const CustomAppBar(),
                SizedBox(
                  height: 10.h,
                ),
                HeaderSection(name: enteredText),
                SizedBox(
                  height: 20.h,
                ),
                const RecommendSection(),
                SizedBox(
                  height: 5.h,
                ),
                const FoodCategoryTabView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
