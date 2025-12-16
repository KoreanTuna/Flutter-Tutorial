class CardEntity {
  final int id;
  final String name;
  final String description;
  final DateTime createdAt;
  final double price;

  CardEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.price,
  });
}
