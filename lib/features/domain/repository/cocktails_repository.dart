import 'package:shake_and_sip_app/features/data/models/cocktail_dto.dart';
import 'package:shake_and_sip_app/features/domain/entities/cocktail_entity.dart';

abstract class CocktailRepository {
  Future<void> init();

  Future<void> syncCocktail();

  Future<void> addCocktailFavourite(CocktailEntity cocktail);

  Future<void> removeCocktailFavourite(String cocktailId);

  Future<List<CocktailEntity>?> fetchCocktails();

  Future<CocktailEntity?> fetchSingleCocktail(String id);

  Future<CocktailEntity> fetchSingleCocktailHive(String id);

  List<CocktailEntity> getCocktailsFavourite();

  bool idInFavourite(String id);

  Future<void> deleteFromDisk();
}
