import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shake_and_sip_app/features/domain/entities/cocktail_entity.dart';

import '../../../data/models/cocktail_dto.dart';

part 'cocktails_event.freezed.dart';

@freezed
class CocktailsEvent with _$CocktailsEvent {
  const factory CocktailsEvent.initHomePage() = LoadingAllCocktailsEvent;

  const factory CocktailsEvent.nextPage(
      {required List<CocktailEntity> cocktails,
      required int pagination}) = NextPaginationAllCocktailsEvent;

  const factory CocktailsEvent.previousPage(
      {required List<CocktailEntity> cocktails,
      required int pagination}) = PreviousPaginationAllCocktailsEvent;
}
