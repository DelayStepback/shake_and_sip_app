import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/cocktail/model/cocktail.dart';

part 'cocktails_fav_event.freezed.dart';

@freezed
class CocktailsFavEvent with _$CocktailsFavEvent{
  const factory CocktailsFavEvent.initFavPage() = LoadingFavCocktailsEvent;

  const factory CocktailsFavEvent.filterCocktailsHomePage(int filter) = FilterAllCocktailsEvent;

  const factory CocktailsFavEvent.addFavCocktail(int cocktailId) = AddFavCocktailEvent;
  const factory CocktailsFavEvent.deleteFavCocktail(int cocktailId) = DeleteFavCocktailEvent;
  const factory CocktailsFavEvent.updateFavCocktail(Cocktail newCocktail) = UpdateFavCocktailEvent;
}



// abstract class CocktailsEvent extends Equatable {
//   const CocktailsEvent();
//   @override
//   List<Object?> get props => [];
// }
//
// class LoadingCocktailsEvent extends CocktailsEvent {
//   @override
//   List<Object?> get props => [];
// }
// class LoadingFavCocktailsEvent extends CocktailsEvent {
//   @override
//   List<Object?> get props => [];
// }
//
//
//
// class LoadCocktailsEvent extends CocktailsEvent {
//   @override
//   List<Object?> get props => [];
// }
//
// class LoadFavouriteCocktailsEvent extends CocktailsEvent {
//   @override
//   List<Object?> get props => [];
// }
//
// class FilterCocktailsEvent extends CocktailsEvent {
//   final int filter;
//
//   const FilterCocktailsEvent({
//     required this.filter,
//   });
//
//   @override
//   List<Object?> get props => [filter];
// }
//
//
// class UpdateFavouriteCocktailsEvent extends CocktailsEvent {
//   final Cocktail oldCocktail;
//   final Cocktail newCocktail;
//
//   const UpdateFavouriteCocktailsEvent({
//     required this.oldCocktail,
//     required this.newCocktail,
//   });
//
//   @override
//   List<Object?> get props => [oldCocktail, newCocktail];
// }