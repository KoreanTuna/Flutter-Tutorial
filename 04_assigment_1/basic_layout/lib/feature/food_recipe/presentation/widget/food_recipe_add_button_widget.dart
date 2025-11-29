import 'package:basic_layout/core/theme/food_recipe_color.dart';
import 'package:flutter/material.dart';

class FoodRecipeAddButtonWidget extends StatelessWidget {
  const FoodRecipeAddButtonWidget({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: FoodRecipeColor.white.withValues(alpha: 1),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Color(0xFFFF7D53),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
