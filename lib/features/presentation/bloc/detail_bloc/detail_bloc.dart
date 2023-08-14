
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/cocktail/cocktails_repository.dart';
import '../../../data/cocktail/model/cocktail.dart';
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
    _cocktailRepository.init();
    Cocktail? cocktailDetailed = await _cocktailRepository.fetchSingleCocktail(event.id);
    emit(DetailState.loaded(cocktailDetailed: cocktailDetailed!));
  }

  Future<void> _onAddFavCocktailEvent(AddFavCocktailEvent event, emit) async{
    _cocktailRepository.addCocktailFavourite(event.cocktail);
    Cocktail newCocktail = event.cocktail.copyWith(favourite: ! (event.cocktail.favourite ?? false));
    emit(DetailState.loaded(cocktailDetailed: newCocktail));
  }
  Future<void> _onDeleteFavCocktailEvent(event, emit) async{
    _cocktailRepository.addCocktailFavourite(event.cocktailId);

  }
  Future<void> _onUpdateFavCocktailEvent(UpdateFavCocktailEvent event, emit) async{
    _cocktailRepository.updateCocktailFavourite(event.newCocktail, event.newCocktail);
  }

}
