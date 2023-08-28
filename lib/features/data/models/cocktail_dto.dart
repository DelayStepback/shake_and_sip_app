import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shake_and_sip_app/features/domain/entities/cocktail_entity.dart';

part 'cocktail_dto.freezed.dart';

part 'cocktail_dto.g.dart';

@freezed
class CocktailDto with _$CocktailDto implements CocktailEntity {
  const factory CocktailDto({
    required String id,
    required String title,
    required String difficulty,
    required String image,
    String? portion,
    String? time,
    String? description,
    List<String>? ingredients,
    List<Map<String, String>>? method,
  }) = _CocktailDto;

  factory CocktailDto.fromJson(Map<String, Object?> json) =>
      _$CocktailDtoFromJson(json);
}
