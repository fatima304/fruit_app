import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/cubit/cart_cubit/cart_cubit.dart';
import 'package:fruit_app/features/AddBasket/widgets/image_section.dart';
import 'package:fruit_app/features/AddBasket/widgets/details_section.dart';

class AddBasketScreen extends StatelessWidget {
  const AddBasketScreen({
    super.key,
    required this.price,
    required this.foodName,
    required this.imgDetails,
    required this.ingredient,
  });
  final String price;
  final String foodName;
  final String imgDetails;
  final String ingredient;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        backgroundColor: const Color(0xffFFA451),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: ImageSection(
                imgDetails: imgDetails,
              ),
            ),
            Expanded(
              flex: 5,
              child: DetailsSection(
                price: price,
                foodName: foodName,
                foodImg: imgDetails,
                ingredient: ingredient,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
