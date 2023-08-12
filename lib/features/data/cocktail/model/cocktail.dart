import 'package:freezed_annotation/freezed_annotation.dart';
part 'cocktail.freezed.dart';
part 'cocktail.g.dart';

@freezed
class Cocktail with _$Cocktail {
  Cocktail._(); // private constructor
  factory Cocktail({
    required String id,
    required String title,
    required String difficulty,
    required String image,
    String? portion,
    String? time,
    String? description,
    List<String>? ingredients,
    List<Map<String, String>>? method,
    bool? favourite,
  }) = _Cocktail;

  factory Cocktail.fromJson(Map<String, Object?> json) =>
      _$CocktailFromJson(json);
}
