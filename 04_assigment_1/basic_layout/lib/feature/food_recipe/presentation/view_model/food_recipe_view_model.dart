import 'package:basic_layout/feature/food_recipe/domain/recipe_entity.dart';

class FoodRecipeViewModel {
  void addRecipe({required RecipeEntity newRecipe}) {
    demoRecipe.add(newRecipe);
  }

  List<RecipeEntity> demoRecipe = [
    RecipeEntity(
      imageUrl:
          'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZCUyMHJlc3RhdXJhbnR8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
      title: 'Spaghetti Carbonara',
      description:
          'A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper.',
      ingredients: [
        '200g spaghetti',
        '100g pancetta',
        '2 large eggs',
        '50g pecorino cheese',
        '50g parmesan cheese',
        'Freshly ground black pepper',
        'Salt',
      ],
    ),
    RecipeEntity(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA6hlx_0b1CMp1IFbilMYVROI9bRhZmJbGUQ&s',
      title: 'Cheesecake',
      description:
          'A rich and creamy dessert made with cream cheese, sugar, and a graham cracker crust.',
      ingredients: [
        '200g graham crackers',
        '100g butter, melted',
        '600g cream cheese',
        '200g sugar',
        '3 large eggs',
        '1 tsp vanilla extract',
        '200ml sour cream',
      ],
    ),
  ];
}
