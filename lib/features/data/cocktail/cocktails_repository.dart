import 'dart:convert';
import 'package:shake_and_sip_app/features/data/cocktail/model/cocktail.dart';
import 'package:shake_and_sip_app/features/data/cocktail/cocktails_dio.dart';

import 'cocktails_hive_database.dart';
//
class CocktailRepository {
  final CocktailsHiveDatabase localDatabase = CocktailsHiveDatabase();

  String mode = 'testing'; // 'release'
  Future<List<Cocktail>?> fetchCocktails(String id) async {
    if (mode == 'testing') {
      TestCocktailRepository tcr = TestCocktailRepository();
      return tcr.fetchCocktails();
    } else {
      //HttpCocktailRepository hcr = HttpCocktailRepository();
      DioCocktailsClient dcc = DioCocktailsClient();
      List<Cocktail>? cocktails = await dcc.fetchCocktails(id);
      return cocktails;
    }
  }

  Future<void> init() async {
    localDatabase.init();
  }

  Future<void> addCocktailFavourite(Cocktail cocktail) async {
    localDatabase.addCocktail(cocktail);
  }

  Future<List<Cocktail>> getCocktailsFavourite() async {
    List<Cocktail> cachedCocktails = localDatabase.getCocktails();
    return cachedCocktails;
  }

  Future<void> updateCocktailFavourite(
      Cocktail oldCocktail, Cocktail newCocktail) async {
    localDatabase.updateCocktail(oldCocktail, newCocktail);
  }

  Future<void> removeCocktailFavourite(Cocktail cocktail) async {
    localDatabase.removeCocktail(cocktail);
  }
}

class TestCocktailRepository {
  Future<List<Cocktail>> fetchCocktails() async {
    String api = '''
  [{"id":"1","title":"Nutella and cognac coffee cocktail","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/1.jpg"},{"id":"2","title":"Easy rhubarb cordial","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/2.jpg"}]
  ''';
    var myJson = json.decode(api) as List;
    List<Cocktail> myList = myJson.map((i) => Cocktail.fromJson(i)).toList();
    await Future.delayed(const Duration(milliseconds: 1500));
    return myList;
  }
}
