import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/cocktails_repository.dart';
import '../../../data/models/cocktail.dart';
import 'detail_event.dart';
import 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final CocktailRepository _cocktailRepository;

  DetailBloc(this._cocktailRepository) : super(const DetailState.loading()) {
    on<LoadingDetailsEvent>(_onLoadingDetailsEvent);

    on<AddFavCocktailEvent>(_onAddFavCocktailEvent);
    on<DeleteFavCocktailEvent>(_onDeleteFavCocktailEvent);
    on<UpdateFavCocktailEvent>(_onUpdateFavCocktailEvent);
  }

  Future<void> _onLoadingDetailsEvent(LoadingDetailsEvent event, emit) async {
    await _cocktailRepository.init();
    bool isFav = _cocktailRepository.idInFavourite(event.id);
    if (isFav) {
      Cocktail cocktailDetailed =
          await _cocktailRepository.fetchSingleCocktailHive(event.id);
      emit(DetailState.loaded(cocktailDetailed: cocktailDetailed, fav: isFav));
    } else {
      Cocktail? cocktailDetailed =
          await _cocktailRepository.fetchSingleCocktail(event.id);
      emit(DetailState.loaded(cocktailDetailed: cocktailDetailed!, fav: isFav));
    }
  }

  Future<void> _onAddFavCocktailEvent(AddFavCocktailEvent event, emit) async {
    await _cocktailRepository.addCocktailFavourite(event.cocktail);
    emit(DetailState.loaded(cocktailDetailed: event.cocktail, fav: true));
  }

  Future<void> _onDeleteFavCocktailEvent(
      DeleteFavCocktailEvent event, emit) async {
    await _cocktailRepository.removeCocktailFavourite(event.cocktail.id);
    emit(DetailState.loaded(cocktailDetailed: event.cocktail, fav: false));
  }

  Future<void> _onUpdateFavCocktailEvent(
      UpdateFavCocktailEvent event, emit) async {
    await _cocktailRepository.updateCocktailFavourite(
        event.newCocktail, event.newCocktail);
  }
}
