import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shake_and_sip_app/features/domain/entities/cocktail_entity.dart';
part 'detail_event.freezed.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.initDetailPage({required String id}) =
      LoadingDetailsEvent;

  const factory DetailEvent.addFavCocktail(CocktailEntity cocktail) =
      AddFavCocktailEvent;

  const factory DetailEvent.deleteFavCocktail(CocktailEntity cocktail) =
      DeleteFavCocktailEvent;
}
