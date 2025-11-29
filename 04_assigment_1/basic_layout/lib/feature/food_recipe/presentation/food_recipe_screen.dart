import 'package:basic_layout/core/theme/food_recipe_color.dart';
import 'package:basic_layout/feature/food_recipe/domain/recipe_entity.dart';
import 'package:basic_layout/feature/food_recipe/presentation/view_model/food_recipe_view_model.dart';
import 'package:basic_layout/feature/food_recipe/presentation/widget/food_recipe_add_button_widget.dart';
import 'package:basic_layout/feature/food_recipe/presentation/widget/food_recipe_item_widget.dart';
import 'package:flutter/material.dart';

class FoodRecipeScreen extends StatefulWidget {
  const FoodRecipeScreen({
    super.key,
    required this.viewModel,
  });

  final FoodRecipeViewModel viewModel;

  @override
  State<FoodRecipeScreen> createState() => _FoodRecipeScreenState();
}

class _FoodRecipeScreenState extends State<FoodRecipeScreen> {
  void addRecipe({required RecipeEntity newRecipe}) {
    setState(() {
      widget.viewModel.addRecipe(newRecipe: newRecipe);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        title: const Text(
          'Food Recipe',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: FoodRecipeColor.gray850,
          ),
        ),
      ),
      backgroundColor: FoodRecipeColor.white,
      body: Stack(
        children: [
          const _BackgroundColorWidget(),
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  FoodRecipeAddButtonWidget(
                    onPressed: () {
                      addRecipe(
                        newRecipe: RecipeEntity(
                          imageUrl:
                              'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZCUyMHJlc3RhdXJhbnR8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                          title: 'New Recipe',
                          description: 'This is a newly added recipe.',
                          ingredients: [
                            'Ingredient 1',
                            'Ingredient 2',
                            'Ingredient 3',
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                      ),
                      itemCount: widget.viewModel.demoRecipe.length,
                      itemBuilder: (context, index) {
                        return FoodRecipeItemWidget(
                          item: widget.viewModel.demoRecipe[index],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 8);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundColorWidget extends StatelessWidget {
  const _BackgroundColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFFF0B646).withValues(alpha: 0.12),
            const Color(0xFFF0B646).withValues(alpha: 0.03),
            const Color(0xFFF0B646).withValues(alpha: 0.05),
          ],
        ),
      ),
    );
  }
}
