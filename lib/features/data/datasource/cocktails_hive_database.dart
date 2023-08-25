import 'package:hive_flutter/adapters.dart';
import 'package:shake_and_sip_app/features/data/models/cocktail.dart';

class CocktailsHiveDatabase {
  late Box _cocktails;

  Future<void> init() async {
    _cocktails = await Hive.openBox("_cocktailsBox");
  }

  Future<Cocktail> getSingleCocktail(String id) async {
    var json = await _cocktails.values.firstWhere((i) => i['id'] == id);
    Map<String, dynamic> retrieveCock = {};
    for (var i in json.keys) {
      retrieveCock[i.toString()] = json[i];
    }
    return Cocktail.fromJson(retrieveCock);
  }

  List<Cocktail> getCocktails() {
    List<Map<String, dynamic>> retriveCocktails = [];
    for (Map cock in _cocktails.values.toList()) {
      Map<String, dynamic> retrieveCock = {};
      for (var i in cock.keys) {
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

  Future<void> removeCocktail(String cocktailId) async {
    await _cocktails.delete(cocktailId);
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

  Future<void> storeCocktails(List<Cocktail> cocktails) async {
    for (Cocktail cocktail in cocktails) {
      await _cocktails.put(cocktail.id.toString(), cocktail.toJson());
    }
  }

  Future<void> deleteBox() async {
    await _cocktails.deleteFromDisk();
    _cocktails = await Hive.openBox("_cocktailsBox");
  }
}
