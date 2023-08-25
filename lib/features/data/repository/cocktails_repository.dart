import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:shake_and_sip_app/features/data/models/cocktail.dart';
import 'package:shake_and_sip_app/features/data/datasource/cocktails_dio.dart';

import '../datasource/cocktails_firebase_repository.dart';
import '../datasource/cocktails_hive_database.dart';

class CocktailRepository {
  final CocktailsHiveDatabase localDatabase = CocktailsHiveDatabase();
  final CocktailsFirebaseApi firebaseApi = CocktailsFirebaseApi();

  Future<void> init() async {
    await localDatabase.init();
  }

  Future<void> syncCocktail() async {
    final email = FirebaseAuth.instance.currentUser?.email;

    List<Cocktail> cocktails = (await firebaseApi.readCocktails(email: email!));
    localDatabase.storeCocktails(cocktails);
  }

  Future<void> addCocktailFavourite(Cocktail cocktail) async {
    localDatabase.addCocktail(cocktail);
    final email = FirebaseAuth.instance.currentUser?.email;
    await firebaseApi.addCocktail(cocktail: cocktail, email: email!);
  }

  Future<void> updateCocktailFavourite(
      Cocktail oldCocktail, Cocktail newCocktail) async {
    localDatabase.updateCocktail(oldCocktail, newCocktail);
    final email = FirebaseAuth.instance.currentUser?.email;
    await firebaseApi.updateCocktail(newCocktail: newCocktail, email: email!);
  }

  Future<void> removeCocktailFavourite(String cocktailId) async {
    localDatabase.removeCocktail(cocktailId);
    final email = FirebaseAuth.instance.currentUser?.email;
    await firebaseApi.removeCocktail(cocktailId: cocktailId, email: email!);
  }

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

  Future<Cocktail> fetchSingleCocktailHive(String id) async {
    Cocktail cocktail = await localDatabase.getSingleCocktail(id);
    return cocktail;
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

  Future<void> deleteFromDisk() async {
    localDatabase.deleteBox();
  }
}
