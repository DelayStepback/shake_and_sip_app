import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/cocktail/model/cocktail.dart';
part 'detail_state.freezed.dart';

@freezed
class DetailState with _$DetailState{
  const factory DetailState.loading() = _DetailLoading;
  const factory DetailState.loaded({required Cocktail cocktailDetailed, required bool fav}) = _DetailLoaded;
  const factory DetailState.error({required String error}) = _DetailError;

}