import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/cocktail/model/cocktail.dart';

part 'detail_event.freezed.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.initDetailPage({required String id}) =
      LoadingDetailsEvent;

  const factory DetailEvent.addFavCocktail(Cocktail cocktail) =
      AddFavCocktailEvent;

  const factory DetailEvent.deleteFavCocktail(Cocktail cocktail) =
      DeleteFavCocktailEvent;

  const factory DetailEvent.updateFavCocktail(Cocktail newCocktail) =
      UpdateFavCocktailEvent;
}
