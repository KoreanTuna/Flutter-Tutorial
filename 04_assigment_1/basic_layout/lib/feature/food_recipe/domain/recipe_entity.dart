class RecipeEntity {
  final String imageUrl;
  final String title;
  final String description;
  final List<String> ingredients;
  final DateTime createdAt = DateTime.now();
  RecipeEntity({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.ingredients,
  });
}
