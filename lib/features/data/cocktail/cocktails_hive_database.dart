import 'package:hive_flutter/adapters.dart';
import 'package:shake_and_sip_app/features/data/cocktail/model/cocktail.dart';


class CocktailsHiveDatabase {
  late Box _cocktails;

  Future<void> init() async {
    _cocktails = await Hive.openBox("_cocktailsBox");
  }

  List<Cocktail> getCocktails() {
    List<Cocktail> cocktails = _cocktails.values.map((i) => Cocktail.fromJson(i)).toList();
    return cocktails;
  }

  void addCocktail(Cocktail cocktail) async {
    await _cocktails.put(cocktail.id.toString(), cocktail.toJson());
  }

  Future<void> removeCocktail(Cocktail cocktail) async {
    final cocktailToRemove =
    _cocktails.values.firstWhere((element) => _eqTwoCocktails(Cocktail.fromJson(element), cocktail));
    await cocktailToRemove.delete();
  }

  Future<void> updateCocktail(Cocktail oldCocktail, Cocktail newCocktail) async {
    await _cocktails.put(oldCocktail.id.toString(), newCocktail);
  }
}

bool _eqTwoCocktails(Cocktail element, Cocktail cocktail) {
  return element.id == cocktail.id;
}
