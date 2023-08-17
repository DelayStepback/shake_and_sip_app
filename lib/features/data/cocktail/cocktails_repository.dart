import 'dart:convert';
import 'package:shake_and_sip_app/features/data/cocktail/model/cocktail.dart';
import 'package:shake_and_sip_app/features/data/cocktail/cocktails_dio.dart';

import 'cocktails_hive_database.dart';

//
class CocktailRepository {
  final CocktailsHiveDatabase localDatabase = CocktailsHiveDatabase();

  Future<List<Cocktail>?> fetchCocktails() async {
    String id = 'none';

    DioCocktailsClient dcc = DioCocktailsClient();
    List<Cocktail>? cocktails = await dcc.fetchCocktails(id);
    return cocktails;
  }

  Future<Cocktail?> fetchSingleCocktail(String id) async {
    DioCocktailsClient dcc = DioCocktailsClient();
    List<Cocktail>? cocktails = await dcc.fetchCocktails(id);
    return cocktails![0];
  }

  Future<void> init() async {
    await localDatabase.init();
  }

  Future<void> addCocktailFavourite(Cocktail cocktail) async {
    localDatabase.addCocktail(cocktail);
  }

  Future<void> updateCocktailFavourite(
      Cocktail oldCocktail, Cocktail newCocktail) async {
    localDatabase.updateCocktail(oldCocktail, newCocktail);
  }

  Future<void> removeCocktailFavourite(String cocktailId) async {
    localDatabase.removeCocktail(cocktailId);
  }

  List<Cocktail> getCocktailsFavourite() {
    List<Cocktail> cachedCocktails = localDatabase.getCocktails();
    return cachedCocktails;
  }

  bool idInFavourite(String id) {
    List<Cocktail> cachedCocktails = localDatabase.getCocktails();
    int ind = cachedCocktails.indexWhere((cocktail) => cocktail.id == id);
    if (ind == -1) {
      return false;
    }
    return true;
  }
}
