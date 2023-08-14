import 'dart:convert';
import 'package:shake_and_sip_app/features/data/cocktail/model/cocktail.dart';
import 'package:shake_and_sip_app/features/data/cocktail/cocktails_dio.dart';

import 'cocktails_hive_database.dart';

//
class CocktailRepository {
  final CocktailsHiveDatabase localDatabase = CocktailsHiveDatabase();

  String mode = 'release'; // 'release'
  Future<List<Cocktail>?> fetchCocktails() async {
    String id = 'none';
    if (mode == 'testing') {
      TestCocktailRepository tcr = TestCocktailRepository();
      return tcr.fetchCocktails(id);
    } else {
      DioCocktailsClient dcc = DioCocktailsClient();
      List<Cocktail>? cocktails = await dcc.fetchCocktails(id);
      return cocktails;
    }
  }

  Future<Cocktail?> fetchSingleCocktail(String id) async {
    if (mode == 'testing') {
      TestCocktailRepository tcr = TestCocktailRepository();
      List<Cocktail> cocktails = await tcr.fetchCocktails(id);
      return cocktails[0];
    } else {
      DioCocktailsClient dcc = DioCocktailsClient();
      List<Cocktail>? cocktails = await dcc.fetchCocktails(id);
      return cocktails![0];
    }
  }


  Future<void> init() async {
    await localDatabase.init();
  }

  Future<void> addCocktailFavourite(Cocktail cocktail) async {
    // save to local detailed
    cocktail = cocktail.copyWith(favourite: true);
    localDatabase.addCocktail(cocktail);
  }
  Future<void> updateCocktailFavourite(Cocktail oldCocktail,
      Cocktail newCocktail) async {
    localDatabase.updateCocktail(oldCocktail, newCocktail);
  }

  Future<void> removeCocktailFavourite(String cocktailId) async {
    localDatabase.removeCocktail(cocktailId);
  }


  List<Cocktail> getCocktailsFavourite() {
    List<Cocktail> cachedCocktails = localDatabase.getCocktails();
    return cachedCocktails;
  }


  bool _idInFavourite(String id) {
    List<Cocktail> cachedCocktails = localDatabase.getCocktails();
    int ind = cachedCocktails.indexWhere((cocktail) => cocktail.id == id);
    if (ind == -1) {
      return false;
    }
    return true;
  }



}

class TestCocktailRepository {
  Future<List<Cocktail>> fetchCocktails(String id) async {
      String api = '''
  [{"id":"1","title":"Nutella and cognac coffee cocktail","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/1.jpg"},{"id":"2","title":"Easy rhubarb cordial","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/2.jpg"},
  {"id":"3","title":"Nutella2 and cognac coffee cocktail","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/1.jpg"},{"id":"4","title":"Easy2 rhubarb cordial","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/2.jpg"},
  {"id":"5","title":"Nutella and cognac coffee cocktail","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/1.jpg"},{"id":"6","title":"Easy rhubarb cordial","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/2.jpg"},
  {"id":"7","title":"Nutella and cognac coffee cocktail","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/1.jpg"},{"id":"8","title":"Easy rhubarb cordial","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/2.jpg"}]
  ''';
      var myJson = json.decode(api) as List;
      List<Cocktail> myList = myJson.map((i) => Cocktail.fromJson(i)).toList();
      await Future.delayed(const Duration(milliseconds: 1500));
    if (id == 'none'){
      return myList;
    }
    else{
      return [myList[int.parse(id)-1]];
    }

  }
}
