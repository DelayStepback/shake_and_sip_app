import 'package:bloc/bloc.dart';

import '../../data/cocktail/model/cocktail.dart';
import '../../data/cocktail/cocktails_repository.dart';
import 'cocktails_event.dart';
import 'cocktails_state.dart';

class CocktailsBloc extends Bloc<CocktailsEvent, CocktailsState> {
  final CocktailRepository _cocktailRepository;

  CocktailsBloc(this._cocktailRepository) : super(CocktailsLoadingState()) {
    on<LoadCocktailsEvent>(_onLoadCocktailsEvent);
    on<FilterCocktailsEvent>(_onFilterCocktailsEvent);

    on<LoadFavouriteCocktailsEvent>(_onLoadFavouriteCocktailsEvent);
    on<FavouriteCocktailsEvent>(_onFavouriteCocktailsEvent);
    on<UpdateFavouriteCocktailsEvent>(_onUpdateFavouriteCocktailsEvent);
  }

  Future<void> _onLoadCocktailsEvent(LoadCocktailsEvent event, emit) async {
    if (state is CocktailsLoadingState) {
      _cocktailRepository.init();
      List<Cocktail>? allCocktails =
          await _cocktailRepository.fetchCocktails('none');
      allCocktails = _cocktailRepository.moveCheckListFavourite(allCocktails!);
      emit(CocktailsLoadedState(allCocktails: allCocktails));
    }
  }

  Future<void> _onFilterCocktailsEvent(FilterCocktailsEvent event, emit) async {
    final state = this.state;
    List<Cocktail>? cocktails;
    if (state is CocktailsLoadedState) {
      cocktails = state.allCocktails;
      // switch
    }
  }

  Future<void> _onLoadFavouriteCocktailsEvent(event, emit) async {
    emit(CocktailsLoadingState());
    final List<Cocktail> allFavouriteCocktails =
        await _cocktailRepository.getCocktailsFavourite();
    emit(CocktailsFavouriteLoadedState(
        allFavouriteCocktails: allFavouriteCocktails));
  }

  Future<void> _onFavouriteCocktailsEvent(
      FavouriteCocktailsEvent event, emit) async {
      int ind = event.cocktails.indexOf(event.cocktail);
      bool isFav = event.cocktail.favourite ?? false;

      if (isFav) {
        _cocktailRepository.addCocktailFavourite(event.cocktail);
      } else {
        _cocktailRepository.removeCocktailFavourite(event.cocktail);
      }

      List<Cocktail> newCocktails = List.from(event.cocktails);
      newCocktails[ind] = event.cocktail.copyWith(favourite: !isFav);

      emit(CocktailsLoadedState(allCocktails: newCocktails));
  }

  Future<void> _onUpdateFavouriteCocktailsEvent(
      UpdateFavouriteCocktailsEvent event, emit) async {
    _cocktailRepository.updateCocktailFavourite(
        event.oldCocktail, event.newCocktail);
  }
}
