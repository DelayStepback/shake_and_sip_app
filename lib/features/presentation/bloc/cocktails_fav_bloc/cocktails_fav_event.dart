import 'package:freezed_annotation/freezed_annotation.dart';
part 'cocktails_fav_event.freezed.dart';

@freezed
class CocktailsFavEvent with _$CocktailsFavEvent {
  const factory CocktailsFavEvent.initFavPage() = LoadingFavCocktailsEvent;

  const factory CocktailsFavEvent.filterCocktailsHomePage(int filter) =
      FilterAllCocktailsEvent;
}
