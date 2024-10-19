import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/cubit/product_cubit/product_cubit.dart';
import 'package:fruit_app/cubit/product_cubit/product_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/models/food_model.dart';
import 'package:fruit_app/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_app/features/AddBasket/add_basket_screen.dart';

// ignore: must_be_immutable
class CustomFoodCard extends StatelessWidget {
  CustomFoodCard({
    super.key,
    required this.cardModel,
  });

  CardModel? cardModel;

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

          return  GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddBasketScreen(
                  price: cardModel!.price,
                  foodName: cardModel!.foodName,
                  imgDetails: cardModel!.foodImg,
                  ingredient: cardModel!.ingredient,
                ),
              ),
            );
          },
          child: SizedBox(
            width: 200.w,
            child: Card(
              elevation: 2,
              color: cardModel?.cardColor ?? Colors.white,
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          width: 80.w,
                          height: 80.h,
                          cardModel!.foodImg,
                        ),
                        Text(
                          cardModel!.foodName,
                          style: GoogleFonts.darkerGrotesque(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorStyle.textColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₦ ${cardModel!.price}',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffF08626),
                                ),
                              ),
                              Image.asset(
                                width: 30.w,
                                height: 30.h,
                                'assets/plus.png',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                          color: ColorStyle.primayColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
