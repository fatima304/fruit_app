import 'package:flutter/material.dart';
import 'package:fruit_app/features/OrderList/widgets/order_listtile.dart';

// ignore: must_be_immutable
class OrderListview extends StatelessWidget {
  const OrderListview(
      {super.key, required this.foodImg, required this.foodName});
  final String foodImg;
  final String foodName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OrderListTile(
          padding: 24,
          img: foodImg,
          imgColor: const Color(0xffFFFAEB),
          subTitle: '2packs',
          title: foodName,
        ),
        const Divider(
          thickness: 1.2,
          color: Color(0xffF4F4F4),
        ),
        const OrderListTile(
          padding: 24,
          img: 'assets/food8.png',
          imgColor: Color(0xffF1EFF6),
          subTitle: '2packs',
          title: 'Melon fruit salad',
        ),
        const Divider(
          thickness: 1.2,
          color: Color(0xffF4F4F4),
        ),
        const OrderListTile(
          padding: 24,
          img: 'assets/3.png',
          imgColor: Color(0xffFEF0F0),
          subTitle: '2packs',
          title: 'Tropical fruit salad',
        ),
      ],
    );
  }
}
