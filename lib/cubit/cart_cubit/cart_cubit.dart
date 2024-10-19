import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/models/order_model.dart';
 
class CartCubit extends Cubit<List<OrderModel>> {
  CartCubit() : super([]);

  void addToCart(OrderModel order) {
    final cartItems = List<OrderModel>.from(state);
    cartItems.add(order);
    emit(cartItems);
  }

  double get totalPrice => state.fold(0, (sum, item) => sum + item.price);
}
