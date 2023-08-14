import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktails_event.freezed.dart';

@freezed
class CocktailsEvent with _$CocktailsEvent{
  const factory CocktailsEvent.initHomePage() = LoadingAllCocktailsEvent;
}