import 'package:basic_layout/core/theme/food_recipe_color.dart';
import 'package:basic_layout/feature/food_recipe/domain/recipe_entity.dart';
import 'package:flutter/material.dart';

class FoodRecipeItemWidget extends StatelessWidget {
  const FoodRecipeItemWidget({
    super.key,
    required this.item,
  });

  final RecipeEntity item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: FoodRecipeColor.white.withValues(alpha: 1),
        boxShadow: [
          BoxShadow(
            color: FoodRecipeColor.gray850.withValues(alpha: 0.08),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),

      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            item.imageUrl,
            fit: BoxFit.cover,
            width: 80,
            height: 80,
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: child,
              );
            },
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: FoodRecipeColor.gray850,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        item.description,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: FoodRecipeColor.coolGray500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
