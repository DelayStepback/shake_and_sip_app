import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/cocktail/model/cocktail.dart';
part 'cocktails_state.freezed.dart';
@freezed
class CocktailsState with _$CocktailsState{
  const factory CocktailsState.loadingAll() = _CocktailsLoadingAll;
  const factory CocktailsState.loadedAll({required List<Cocktail> allCocktails,required int pagination}) = _CocktailsLoadedAll;
  const factory CocktailsState.error({required String error}) = _CocktailsError;

}