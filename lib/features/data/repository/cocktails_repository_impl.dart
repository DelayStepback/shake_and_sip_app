import 'package:firebase_auth/firebase_auth.dart';
import 'package:shake_and_sip_app/features/data/helpers/cocktail_entity_to_dto.dart';
import 'package:shake_and_sip_app/features/data/datasource/cocktails_dio.dart';
import 'package:shake_and_sip_app/features/domain/entities/cocktail_entity.dart';
import '../../domain/repository/cocktails_repository.dart';
import '../datasource/cocktails_firebase_api.dart';
import '../datasource/cocktails_hive_database.dart';
import '../models/cocktail_dto.dart';

class CocktailRepositoryImplementation extends CocktailRepository {
  final CocktailsHiveDatabase localDatabase;
  final CocktailsFirebaseApi firebaseApi;

  CocktailRepositoryImplementation(this.localDatabase, this.firebaseApi);

  @override
  Future<void> init() async {
    await localDatabase.init();
  }

  @override
  Future<void> syncCocktail() async {
    final email = FirebaseAuth.instance.currentUser?.email;

    List<CocktailDto> cocktails =
        (await firebaseApi.readCocktails(email: email!));
    localDatabase.storeCocktails(cocktails);
  }

  @override
  Future<void> addCocktailFavourite(CocktailEntity cocktail) async {
    final cocktailDto = cocktailEntityToDto(cocktail);
    localDatabase.addCocktail(cocktailDto);
    final email = FirebaseAuth.instance.currentUser?.email;
    await firebaseApi.addCocktail(cocktail: cocktailDto, email: email!);
  }

  @override
  Future<void> removeCocktailFavourite(String cocktailId) async {
    localDatabase.removeCocktail(cocktailId);
    final email = FirebaseAuth.instance.currentUser?.email;
    await firebaseApi.removeCocktail(cocktailId: cocktailId, email: email!);
  }

  @override
  Future<List<CocktailDto>?> fetchCocktails() async {
    String id = 'none';
    DioCocktailsClient dcc = DioCocktailsClient();
    List<CocktailDto>? cocktails = await dcc.fetchCocktails(id);
    return cocktails;
  }

  @override
  Future<CocktailDto?> fetchSingleCocktail(String id) async {
    DioCocktailsClient dcc = DioCocktailsClient();
    List<CocktailDto>? cocktails = await dcc.fetchCocktails(id);
    return cocktails![0];
  }

  @override
  Future<CocktailDto> fetchSingleCocktailHive(String id) async {
    CocktailDto cocktail = await localDatabase.getSingleCocktail(id);
    return cocktail;
  }

  @override
  List<CocktailDto> getCocktailsFavourite() {
    List<CocktailDto> cachedCocktails = localDatabase.getCocktails();
    return cachedCocktails;
  }

  @override
  bool idInFavourite(String id) {
    List<CocktailDto> cachedCocktails = localDatabase.getCocktails();
    int ind = cachedCocktails.indexWhere((cocktail) => cocktail.id == id);
    if (ind == -1) {
      return false;
    }
    return true;
  }

  @override
  Future<void> deleteFromDisk() async {
    localDatabase.deleteBox();
  }
}
