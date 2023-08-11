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
    on<AddFavouriteCocktailsEvent>(_onAddFavouriteCocktailsEvent);
    on<UpdateFavouriteCocktailsEvent>(_onUpdateFavouriteCocktailsEvent);
    on<DeleteFavouriteCocktailsEvent>(_onDeleteFavouriteCocktailsEvent);
  }

  Future<void> _onLoadCocktailsEvent(LoadCocktailsEvent event, emit) async {
    if (state is CocktailsLoadingState){
    final List<Cocktail>? allCocktails = await _cocktailRepository.fetchCocktails('none');
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

  Future<void> _onAddFavouriteCocktailsEvent(
      AddFavouriteCocktailsEvent event, emit) async {
    _cocktailRepository.addCocktailFavourite(event.cocktail);
  }

  Future<void> _onUpdateFavouriteCocktailsEvent(
      UpdateFavouriteCocktailsEvent event, emit) async {
    _cocktailRepository.updateCocktailFavourite(
        event.oldCocktail, event.newCocktail);
  }

  Future<void> _onDeleteFavouriteCocktailsEvent(
      DeleteFavouriteCocktailsEvent event, emit) async {
    _cocktailRepository.removeCocktailFavourite(event.cocktail);
  }
}
