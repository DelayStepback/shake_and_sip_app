import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shake_and_sip_app/features/domain/entities/cocktail_entity.dart';
import '../../../data/models/cocktail_dto.dart';

part 'detail_state.freezed.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState.loading() = _DetailLoading;

  const factory DetailState.loaded(
      {required CocktailEntity cocktailDetailed, required bool fav}) = _DetailLoaded;

  const factory DetailState.error({required String error}) = _DetailError;
}
