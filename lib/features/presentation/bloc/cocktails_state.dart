import 'package:equatable/equatable.dart';

import '../../data/cocktail/model/cocktail.dart';

class CocktailsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CocktailsLoadingState extends CocktailsState {
  @override
  List<Object?> get props => [];
}


class CocktailsLoadedState extends CocktailsState {
  final List<Cocktail>? allCocktails;

  CocktailsLoadedState({required this.allCocktails});

  CocktailsLoadedState copyWith(
      {List<Cocktail>? listCocktails,}) {
    return CocktailsLoadedState(
        allCocktails: listCocktails ?? allCocktails);
  }

  @override
  List<Object?> get props => [allCocktails];
}

class CocktailsFavouriteLoadedState extends CocktailsState {
  final List<Cocktail>? allFavouriteCocktails;

  CocktailsFavouriteLoadedState({required this.allFavouriteCocktails});

  @override
  List<Object?> get props => [allFavouriteCocktails];
}

class CocktailsErrorState extends CocktailsState {
  final String error;

  CocktailsErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
