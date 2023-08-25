import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/cocktail.dart';

part 'cocktails_fav_state.freezed.dart';

@freezed
class CocktailsFavState with _$CocktailsFavState {
  const factory CocktailsFavState.loadingFav() = _CocktailsLoadingFav;

  const factory CocktailsFavState.loadedFav(
      {required List<Cocktail> favCocktails}) = _CocktailsLoadedFav;

  const factory CocktailsFavState.error({required String error}) =
      _CocktailsFavError;
}
