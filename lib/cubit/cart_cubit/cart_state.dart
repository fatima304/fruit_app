
import 'package:fruit_app/models/order_model.dart';

class BasketState   {
  final List<OrderModel> basket;
  final Map<OrderModel, int> quantities;
  final double totalPrice;

  const BasketState({
    this.basket = const [],
    this.quantities = const {},
    this.totalPrice = 0.0,
  });

  BasketState copyWith({
    List<OrderModel>? basket,
    Map<OrderModel, int>? quantities,
    double? totalPrice,
  }) {
    return BasketState(
      basket: basket ?? this.basket,
      quantities: quantities ?? this.quantities,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  @override
  List<Object> get props => [basket, quantities, totalPrice];
}
