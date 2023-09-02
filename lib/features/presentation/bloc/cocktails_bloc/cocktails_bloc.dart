import 'package:bloc/bloc.dart';
import 'package:shake_and_sip_app/features/domain/entities/cocktail_entity.dart';

import '../../../domain/repository/cocktails_repository.dart';
import 'cocktails_event.dart';
import 'cocktails_state.dart';

class CocktailsBloc extends Bloc<CocktailsEvent, CocktailsState> {
  final CocktailRepository _cocktailRepository;

  CocktailsBloc(this._cocktailRepository)
      : super(const CocktailsState.loadingAll()) {
    on<LoadingAllCocktailsEvent>(_onLoadingAllCocktailsEvent);
    on<NextPaginationAllCocktailsEvent>(_onNextPaginationAllCocktailsEvent);
    on<PreviousPaginationAllCocktailsEvent>(
        _onPreviousPaginationAllCocktailsEvent);
  }

  Future<void> _onLoadingAllCocktailsEvent(event, emit) async {
    _cocktailRepository.init();

    try {
      List<CocktailEntity>? allCocktails =
          await _cocktailRepository.fetchCocktails();
      emit(
        CocktailsState.loadedAll(allCocktails: allCocktails!, pagination: 0),
      );
    } catch (e) {
      emit(
        CocktailsState.error(error: e.toString()),
      );
    }
  }

  Future<void> _onNextPaginationAllCocktailsEvent(
      NextPaginationAllCocktailsEvent event, emit) async {
    int pages = (event.cocktails.length / 5).ceil() - 1;
    if (event.pagination < pages) {
      emit(
        CocktailsState.loadedAll(
            allCocktails: event.cocktails, pagination: event.pagination + 1),
      );
    }
  }

  Future<void> _onPreviousPaginationAllCocktailsEvent(
      PreviousPaginationAllCocktailsEvent event, emit) async {
    if (event.pagination - 1 >= 0) {
      emit(
        CocktailsState.loadedAll(
            allCocktails: event.cocktails, pagination: event.pagination - 1),
      );
    }
  }
}
