import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shake_and_sip_app/features/domain/entities/cocktail_entity.dart';

part 'cocktails_fav_state.freezed.dart';

@freezed
class CocktailsFavState with _$CocktailsFavState {
  const factory CocktailsFavState.loadingFav() = _CocktailsLoadingFav;

  const factory CocktailsFavState.loadedFav(
      {required List<CocktailEntity> favCocktails}) = _CocktailsLoadedFav;

  const factory CocktailsFavState.error({required String error}) =
      _CocktailsFavError;
}
