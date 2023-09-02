import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shake_and_sip_app/features/data/models/cocktail_dto.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class CocktailsFirebaseApi {
  Future<void> addCocktail({
    required CocktailDto cocktail,
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

  Future<void> removeCocktail(
      {required String cocktailId, required String email}) async {
    await _firestore
        .collection('users')
        .doc(email)
        .collection('cocktails')
        .doc(cocktailId)
        .delete();
  }

  Future<List<CocktailDto>> readCocktails({required String email}) async {
    QuerySnapshot querySnapshot = await _firestore
        .collection('users')
        .doc(email)
        .collection('cocktails')
        .get();
    final allData = querySnapshot.docs
        .map(
          (doc) => CocktailDto.fromJson(doc.data() as Map<String, dynamic>),
        )
        .toList();
    return allData;
  }
}
