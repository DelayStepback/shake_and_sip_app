
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/cocktail/cocktails_repository.dart';
import '../../../data/cocktail/model/cocktail.dart';
import 'detail_event.dart';
import 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final CocktailRepository _cocktailRepository;

  DetailBloc(this._cocktailRepository) : super(const DetailState.loading()) {
    on<LoadingDetailsEvent>(_onLoadingDetailsEvent);
  }
  Future<void> _onLoadingDetailsEvent(LoadingDetailsEvent event, emit) async {
    Cocktail? cocktailDetailed = await _cocktailRepository.fetchSingleCocktail(event.id);
    emit(DetailState.loaded(cocktailDetailed: cocktailDetailed!));
  }

}
