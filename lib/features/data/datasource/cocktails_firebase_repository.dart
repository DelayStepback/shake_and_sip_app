import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shake_and_sip_app/features/data/models/cocktail.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class CocktailsFirebaseApi {
  Future<void> addCocktail({
    required Cocktail cocktail,
    required String email,
  }) async {
    final json = cocktail.toJson();
    await _firestore
        .collection('users')
        .doc(email)
        .collection('cocktails')
        .doc(cocktail.id)
        .set(json);
  }

  Future<void> updateCocktail(
      {required Cocktail newCocktail, required String email}) async {
    final json = newCocktail.toJson();
    await _firestore
        .collection('users')
        .doc(email)
        .collection('cocktails')
        .doc(newCocktail.id)
        .set(json);
  }

  Future<void> removeCocktail(
      {required String cocktailId, required String email}) async {
    await _firestore
        .collection('users')
        .doc(email)
        .collection('cocktails')
        .doc(cocktailId)
        .delete();
  }

  Future<List<Cocktail>> readCocktails({required String email}) async {
    QuerySnapshot querySnapshot = await _firestore
        .collection('users')
        .doc(email)
        .collection('cocktails')
        .get();
    final allData = querySnapshot.docs
        .map((doc) => Cocktail.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    return allData;
  }
}
