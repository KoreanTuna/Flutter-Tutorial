import 'package:basic_layout/feature/food_recipe/presentation/food_recipe_screen.dart';
import 'package:basic_layout/feature/food_recipe/presentation/view_model/food_recipe_view_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodRecipeScreen(
        viewModel: FoodRecipeViewModel(),
      ),
    );
  }
}
