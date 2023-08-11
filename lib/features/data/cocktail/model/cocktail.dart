import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'cocktail.freezed.dart';

part 'cocktail.g.dart';

@freezed
class Cocktail extends HiveObject with _$Cocktail {
  Cocktail._(); // private constructor
  @HiveType(typeId: 0, adapterName: 'CocktailClassAdapter')
  factory Cocktail({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required String difficulty,
    @HiveField(3) required String image,
    @HiveField(4) String? portion,
    @HiveField(5) String? time,
    @HiveField(6) String? description,
    @HiveField(7) List<String>? ingredients,
    @HiveField(8) List<Map<String, String>>? method,
  }) = _Cocktail;

  factory Cocktail.fromJson(Map<String, Object?> json) =>
      _$CocktailFromJson(json);
}
