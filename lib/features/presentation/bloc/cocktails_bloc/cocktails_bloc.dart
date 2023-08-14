import 'package:bloc/bloc.dart';

import '../../../data/cocktail/model/cocktail.dart';
import '../../../data/cocktail/cocktails_repository.dart';
import 'cocktails_event.dart';
import 'cocktails_state.dart';

class CocktailsBloc extends Bloc<CocktailsEvent, CocktailsState> {
  final CocktailRepository _cocktailRepository;

  CocktailsBloc(this._cocktailRepository) : super(const CocktailsState.loadingAll()) {
    on<LoadingAllCocktailsEvent>(_onLoadingAllCocktailsEvent);
  }

  Future<void> _onLoadingAllCocktailsEvent(event, emit) async {
    _cocktailRepository.init();
    List<Cocktail>? allCocktails = await _cocktailRepository.fetchCocktails();
    allCocktails = _cocktailRepository.moveCheckListFavourite(allCocktails!);
    emit(CocktailsState.loadedAll(allCocktails: allCocktails));
  }

}
