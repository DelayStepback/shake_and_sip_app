import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/cocktail/model/cocktail.dart';

part 'cocktails_event.freezed.dart';

@freezed
class CocktailsEvent with _$CocktailsEvent {
  const factory CocktailsEvent.initHomePage() = LoadingAllCocktailsEvent;

  const factory CocktailsEvent.nextPage(
      {required List<Cocktail> cocktails,
      required int pagination}) = NextPaginationAllCocktailsEvent;

  const factory CocktailsEvent.previousPage(
      {required List<Cocktail> cocktails,
      required int pagination}) = PreviousPaginationAllCocktailsEvent;
}
