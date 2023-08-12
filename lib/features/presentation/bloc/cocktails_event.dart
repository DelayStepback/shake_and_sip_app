import 'package:equatable/equatable.dart';

import '../../data/cocktail/model/cocktail.dart';

abstract class CocktailsEvent extends Equatable {
  const CocktailsEvent();
  @override
  List<Object?> get props => [];
}

class LoadCocktailsEvent extends CocktailsEvent {
  @override
  List<Object?> get props => [];
}

class LoadFavouriteCocktailsEvent extends CocktailsEvent {
  @override
  List<Object?> get props => [];
}

class FilterCocktailsEvent extends CocktailsEvent {
  final List<Cocktail> cocktails;
  final int filter;

  const FilterCocktailsEvent({
    required this.cocktails,
    required this.filter,
  });

  @override
  List<Object?> get props => [cocktails, filter];
}

class FavouriteCocktailsEvent extends CocktailsEvent {
  final Cocktail cocktail;
  final List<Cocktail> cocktails;

  const FavouriteCocktailsEvent({required this.cocktail, required this.cocktails});

  @override
  List<Object?> get props => [cocktail, cocktails];
}

class UpdateFavouriteCocktailsEvent extends CocktailsEvent {
  final Cocktail oldCocktail;
  final Cocktail newCocktail;

  const UpdateFavouriteCocktailsEvent({
    required this.oldCocktail,
    required this.newCocktail,
  });

  @override
  List<Object?> get props => [oldCocktail, newCocktail];
}