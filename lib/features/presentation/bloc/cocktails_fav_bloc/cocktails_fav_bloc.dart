import 'package:bloc/bloc.dart';

import '../../../data/cocktail/model/cocktail.dart';
import '../../../data/cocktail/repository/cocktails_repository.dart';
import 'cocktails_fav_event.dart';
import 'cocktails_fav_state.dart';

class CocktailsFavBloc extends Bloc<CocktailsFavEvent, CocktailsFavState> {
  final CocktailRepository _cocktailRepository;

  CocktailsFavBloc(this._cocktailRepository)
      : super(const CocktailsFavState.loadingFav()) {
    on<LoadingFavCocktailsEvent>(_onLoadingFavCocktailsEvent);
    on<FilterAllCocktailsEvent>(_onFilterAllCocktailsEvent);
  }

  Future<void> _onLoadingFavCocktailsEvent(event, emit) async {
    emit(const CocktailsFavState.loadingFav());
    await _cocktailRepository.init();
    final List<Cocktail> favCocktails =
        _cocktailRepository.getCocktailsFavourite();
    emit(CocktailsFavState.loadedFav(favCocktails: favCocktails));
  }

  Future<void> _onFilterAllCocktailsEvent(event, emit) async {}
}
