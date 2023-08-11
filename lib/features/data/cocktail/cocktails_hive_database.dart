import 'package:hive/hive.dart';
import 'package:shake_and_sip_app/features/data/cocktail/model/cocktail.dart';


class CocktailsHiveDatabase {
  late Box<Cocktail> _cocktails;

  Future<void> init() async {
    _cocktails = await Hive.openBox<Cocktail>("_cocktailsBox");
  }

  List<Cocktail> getCocktails() {
    return _cocktails.values.toList();
  }

  void addCocktail(Cocktail cocktail) {
    _cocktails.add(cocktail);
  }

  Future<void> removeCocktail(Cocktail cocktail) async {
    final cocktailToRemove =
    _cocktails.values.firstWhere((element) => _eqTwoCocktails(element, cocktail));
    await cocktailToRemove.delete();
  }

  Future<void> updateCocktail(Cocktail oldCocktail, Cocktail newCocktail) async {
    final cocktailToUpdate =
    _cocktails.values.firstWhere((element) => _eqTwoCocktails(element, oldCocktail));
    final index = cocktailToUpdate.key as int;
    await _cocktails.put(index, newCocktail);
  }
}

bool _eqTwoCocktails(Cocktail element, Cocktail cocktail) {
  return element.id == cocktail.id;
}
