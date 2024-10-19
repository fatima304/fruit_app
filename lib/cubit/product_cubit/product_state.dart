import 'package:fruit_app/models/food_model.dart';

abstract class ProductState {}

class ProductInitialState extends ProductState {}

class ProductLoadeedState extends ProductState {}

class ProductCreatedState extends ProductState {}

class ProductSuccessState extends ProductState {
  final List<CardModel> products;

  ProductSuccessState(this.products);
}

class ProductFailureState extends ProductState {
  final String errorMessage;

  ProductFailureState(this.errorMessage);
}
