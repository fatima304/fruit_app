import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/cubit/category_cubit/category_state.dart';
import 'package:fruit_app/models/food_model.dart';
 
class CategoryCubit extends Cubit<CategoryState> {
 
  CategoryCubit() : super(CategoryInitialState());

  final List<List<CardModel>> foodData = [
  [
    CardModel(
        price: '10,000',
        foodImg: 'assets/food6.png',
        foodName: 'Quinoa fruit salad',
        ingredient:
            'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint'),
    CardModel(
      price: '12,000',
      foodImg: 'assets/3.png',
      foodName: 'Tropical fruit salad',
      ingredient:
          'Pineapple, Mango, Kiwi, Papaya, Coconut Flakes, Lime Juice, Fresh Mint.',
    ),
    CardModel(
      price: '15,000',
      foodImg: 'assets/food8.png',
      foodName: 'Cereal Bowl',
      ingredient: 'Golden Flakes, Milk, Honey, Almonds, Bananas, Berries.',
    ),
    CardModel(
      price: '13,000',
      foodImg: 'assets/food12.png',
      foodName: 'Bowl of Golden Flakes',
      ingredient:
          'Golden Flakes, Milk, Honey, Sliced Bananas, Strawberries, Nuts.',
    ),
    CardModel(
      price: '17,000',
      foodImg: 'assets/food9.png',
      foodName: 'Fruity Muesli',
      ingredient:
          'Muesli, Fresh Sliced Apples, Fresh Sliced Bananas, Fresh Berries, Yogurt, Honey, Chia Seeds.',
    ),
  ],
  [
    CardModel(
        price: '10,000',
        foodImg: 'assets/fod8.png',
        foodName: 'Oat Cranberry Bowl',
        ingredient:
            'Smoothie Base, Oats, Cranberries, Banana Slices, Chia Seeds, Almonds.'),
    CardModel(
      price: '12,000',
      foodImg: 'assets/Fruit.png',
      foodName: 'Fruit Porridge',
      ingredient:
          'Porridge, Fresh Sliced Apples, Fresh Berries, Bananas, Honey, Almonds, Cinnamon.',
    ),
    CardModel(
      price: '17,000',
      foodImg: 'assets/food9.png',
      foodName: 'Fruity Muesli',
      ingredient:
          'Muesli, Fresh Sliced Apples, Fresh Sliced Bananas, Fresh Berries, Yogurt, Honey, Chia Seeds.',
    ),
    CardModel(
      price: '15,000',
      foodImg: 'assets/food8.png',
      foodName: 'Cereal Bowl',
      ingredient: 'Golden Flakes, Milk, Honey, Almonds, Bananas, Berries.',
    ),
    CardModel(
      price: '11,000',
      foodImg: 'assets/bowl.png',
      foodName: 'Berry Fruit Bowl',
      ingredient:
          'liced Bananas, Strawberries, Blueberries, Kiwi, Granola, Yogurt, Honey, Chia Seeds.',
    ),
  ],
  [
    CardModel(
      price: '8,000',
      foodImg: 'assets/2.png',
      foodName: 'Berry mango combo',
      ingredient:
          'Blueberries, Strawberries, Mango, Greek Yogurt, Honey, Granola',
    ),
    CardModel(
      price: '3,000',
      foodImg: 'assets/food3.png',
      foodName: 'Golden brown waffle',
      ingredient:
          'Whole Wheat Flour, Eggs, Almond Milk, Baking Powder, Maple Syrup, Fresh Berries.',
    ),
    CardModel(
      price: '15,000',
      foodImg: 'assets/food8.png',
      foodName: 'Cereal Bowl',
      ingredient: 'Golden Flakes, Milk, Honey, Almonds, Bananas, Berries.',
    ),
    CardModel(
      price: '13,000',
      foodImg: 'assets/food12.png',
      foodName: 'Bowl of Golden Flakes',
      ingredient:
          'Golden Flakes, Milk, Honey, Sliced Bananas, Strawberries, Nuts.',
    ),
    CardModel(
      price: '17,000',
      foodImg: 'assets/food9.png',
      foodName: 'Fruity Muesli',
      ingredient:
          'Muesli, Fresh Sliced Apples, Fresh Sliced Bananas, Fresh Berries, Yogurt, Honey, Chia Seeds.',
    ),
  ],
  [
    CardModel(
      price: '6,000',
      foodImg: 'assets/food5.png',
      foodName: 'Berries & Muesli bowl',
      ingredient:
          'Rolled Oats, Blueberries, Raspberries, Almond Milk, Honey, Chopped Almonds.',
    ),
    CardModel(
        price: '10,000',
        foodImg: 'assets/food6.png',
        foodName: 'Quinoa fruit salad',
        ingredient:
            'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint'),
    CardModel(
      price: '13,000',
      foodImg: 'assets/food12.png',
      foodName: 'Bowl of Golden Flakes',
      ingredient:
          'Golden Flakes, Milk, Honey, Sliced Bananas, Strawberries, Nuts.',
    ),
    CardModel(
      price: '12,000',
      foodImg: 'assets/3.png',
      foodName: 'Tropical fruit salad',
      ingredient:
          'Pineapple, Mango, Kiwi, Papaya, Coconut Flakes, Lime Juice, Fresh Mint.',
    ),
    CardModel(
      price: '15,000',
      foodImg: 'assets/food8.png',
      foodName: 'Cereal Bowl',
      ingredient: 'Golden Flakes, Milk, Honey, Almonds, Bananas, Berries.',
    ),
  ],
];


  void loadFoodData() {
    try {
      // Simulate a delay for loading data
      emit(CategoryLoadeedState());
      // Load food data here, for now we use the existing foodData
      emit(CategorySuccessState(catModel: foodData));
    } catch (e) {
      emit(CategoryFailureState(e.toString()));
    }
  }
}
