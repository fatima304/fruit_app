import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/models/food_model.dart';
import "package:fruit_app/cubit/product_cubit/product_state.dart";
import 'package:fruit_app/services/database_helper.dart';

class ProductCubit extends Cubit<ProductState> {
  DatabaseHelper databaseHelper = DatabaseHelper.instance;

  ProductCubit() : super(ProductInitialState());

  void createDatabase() async {
    await databaseHelper.database;
    emit(
      ProductCreatedState(),
    );
  }

  Future<void> fetchFoods() async {
    emit(
      ProductLoadeedState(),
    );
    try {
      final products = await databaseHelper.getAllFood();
      emit(
        ProductSuccessState(products),
      );
    } catch (e) {
      emit(
        ProductFailureState(
          e.toString(),
        ),
      );
    }
  }

  Future<void> addFood() async {
    try {
      List<CardModel> fruits = await databaseHelper.getAllFood();
      if (fruits.isNotEmpty) {
        emit(
          ProductSuccessState(fruits),
        );
      } else {
        for (var fruit in foodModel) {
          await databaseHelper.insertFood(fruit);
        }
      }
    } catch (e) {
      emit(
        ProductFailureState(
          e.toString(),
        ),
      );
    }
  }
}
