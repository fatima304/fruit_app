import 'package:fruit_app/models/food_model.dart';

abstract class CategoryState {}

class CategoryInitialState extends CategoryState {}

class CategoryLoadeedState extends CategoryState {}

class CategoryCreatedState extends CategoryState {}

class CategorySuccessState extends CategoryState {
  final List<List<CardModel>> catModel;

  CategorySuccessState({required this.catModel});
}

class CategoryFailureState extends CategoryState {
  final String errorMessage;

  CategoryFailureState(this.errorMessage);
}
