class CocktailEntity{
  final String id;
  final String title;
  final String difficulty;
  final String image;
  final String? portion;
  final String? time;
  final String? description;
  final List<String>? ingredients;
  final List<Map<String, String>>? method;
  const CocktailEntity({
    required this.id,
    required this.title,
    required this.difficulty,
    required this.image,
    this.portion,
    this.time,
    this.description,
    this.ingredients,
    this.method,
  });
}