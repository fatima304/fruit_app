import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:fruit_app/cubit/product_cubit/product_cubit.dart';
import 'package:fruit_app/cubit/product_cubit/product_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/Home/widgets/food_card.dart';

// ignore: must_be_immutable
class CardFoodListview extends StatelessWidget {
  const CardFoodListview({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoadeedState) {
          log('Loading');

          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProductSuccessState) {
          log('Success');

          return SizedBox(
            height: 220.h,
            child: ListView.builder(
              itemCount: state.products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomFoodCard(cardModel: state.products[index]);
              },
            ),
          );
        } else if (state is ProductFailureState) {
          log('Failure');

          return Center(
            child: Text(
              state.errorMessage,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          );
        } else {
          log('Out of build');

          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
