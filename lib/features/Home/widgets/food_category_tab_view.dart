import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/cubit/category_cubit/category_cubit.dart';
import 'package:fruit_app/cubit/category_cubit/category_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/models/food_data.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/Home/widgets/food_card.dart';

class FoodCategoryTabView extends StatelessWidget {
  const FoodCategoryTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CategoryCubit()..loadFoodData(),
      child: DefaultTabController(
        length: categories.length,
        child: Column(
          children: [
            TabBar(
              dividerHeight: 0.h,
              isScrollable: true,
              labelColor: ColorStyle.textColor,
              labelStyle: GoogleFonts.darkerGrotesque(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: GoogleFonts.darkerGrotesque(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelColor: Colors.grey,
              indicator: UnderlineTabIndicator(
                borderSide:
                    BorderSide(color: ColorStyle.primayColor, width: 2.w),
                insets: EdgeInsets.symmetric(horizontal: 20.w),
              ),
              tabs: categories.map((category) {
                return Tab(
                  child: Text(
                    category,
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: 200.h,
              child: BlocBuilder<CategoryCubit, CategoryState>(
                builder: (context, state) {
                  if (state is CategoryLoadeedState) {
                    log('Loading');
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is CategoryFailureState) {
                    log('Failure');

                    return Center(child: Text(state.errorMessage));
                  } else if (state is CategorySuccessState) {
                    log('Success');

                    return TabBarView(
                      children: categories.map((category) {
                        int index = categories.indexOf(category);
                        return SizedBox(
                          height: 220.h,
                          child: ListView.builder(
                            itemCount: state.catModel[index].length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, item) {
                              return CustomFoodCard(
                                  cardModel: state.catModel[index][item]);
                            },
                          ),
                        );
                      }).toList(),
                    );
                  } else {
                    log('out');

                    return const Center(
                      child: Text('Unexpected state'),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
