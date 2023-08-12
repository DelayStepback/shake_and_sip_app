import 'package:hive_flutter/adapters.dart';
import 'package:shake_and_sip_app/features/data/cocktail/model/cocktail.dart';

class CocktailsHiveDatabase {
  late Box _cocktails;

  Future<void> init() async {
    _cocktails = await Hive.openBox("_cocktailsBox");
  }


  List<Cocktail> getCocktails() {
    List<Map<String, dynamic>> retriveCocktails = [];
    for (Map cock in _cocktails.values.toList()){
      Map<String, dynamic> retrieveCock = Map();
      for (var i in cock.keys){
        retrieveCock[i.toString()] = cock[i];
      }
      retriveCocktails.add(retrieveCock);
    }
    List<Cocktail> cocktails =
        retriveCocktails.map((i) => Cocktail.fromJson(i)).toList();
    return cocktails;
  }

  void addCocktail(Cocktail cocktail) async {
    await _cocktails.put(cocktail.id.toString(), cocktail.toJson());
  }

  Future<void> removeCocktail(Cocktail cocktail) async {
    await _cocktails.delete(cocktail.id);
  }

  Future<void> updateCocktail(
      Cocktail oldCocktail, Cocktail newCocktail) async {
    await _cocktails.put(oldCocktail.id.toString(), newCocktail);
  }

  Future<bool> hasCocktailFavourite(String id) async {
    bool check = await _cocktails.values
        .firstOrNull((i) => Cocktail.fromJson(i).id == id);
    if (check) {
      return true;
    }
    return false;
  }
}

bool _eqTwoCocktails(Cocktail element, Cocktail cocktail) {
  return element.id == cocktail.id;
}
