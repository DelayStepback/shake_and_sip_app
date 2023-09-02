import 'package:hive_flutter/adapters.dart';
import 'package:shake_and_sip_app/features/data/models/cocktail_dto.dart';

class CocktailsHiveDatabase {
  late Box _cocktails;

  Future<void> init() async {
    _cocktails = await Hive.openBox("_cocktailsBox");
  }

  Future<CocktailDto> getSingleCocktail(String id) async {
    var json = await _cocktails.values.firstWhere((i) => i['id'] == id);
    Map<String, dynamic> retrieveCock = {};
    for (var i in json.keys) {
      retrieveCock[i.toString()] = json[i];
    }
    return CocktailDto.fromJson(retrieveCock);
  }

  List<CocktailDto> getCocktails() {
    List<Map<String, dynamic>> retriveCocktails = [];
    for (Map cock in _cocktails.values.toList()) {
      Map<String, dynamic> retrieveCock = {};
      for (var i in cock.keys) {
        retrieveCock[i.toString()] = cock[i];
      }
      retriveCocktails.add(retrieveCock);
    }
    List<CocktailDto> cocktails =
        retriveCocktails.map((i) => CocktailDto.fromJson(i)).toList();
    return cocktails;
  }

  void addCocktail(CocktailDto cocktail) async {
    await _cocktails.put(cocktail.id.toString(), cocktail.toJson());
  }

  Future<void> removeCocktail(String cocktailId) async {
    await _cocktails.delete(cocktailId);
  }

  Future<bool> hasCocktailFavourite(String id) async {
    bool check = await _cocktails.values
        .firstOrNull((i) => CocktailDto.fromJson(i).id == id);
    if (check) {
      return true;
    }
    return false;
  }

  Future<void> storeCocktails(List<CocktailDto> cocktails) async {
    for (CocktailDto cocktail in cocktails) {
      await _cocktails.put(cocktail.id.toString(), cocktail.toJson());
    }
  }

  Future<void> deleteBox() async {
    await _cocktails.deleteFromDisk();
    _cocktails = await Hive.openBox("_cocktailsBox");
  }
}
