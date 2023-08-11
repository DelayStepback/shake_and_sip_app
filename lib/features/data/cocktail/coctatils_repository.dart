import 'dart:convert';
import 'package:shake_and_sip_app/features/data/cocktail/cocktail.dart';
import 'package:shake_and_sip_app/features/data/cocktail/cocktails_dio.dart';

class CocktailRepository {
  String mode = 'testing'; // 'release'
  Future<List<Cocktail>?> fetchCocktails(String id) async {
    if (mode == 'testing') {
      TestCocktailRepository tcr = TestCocktailRepository();
      return tcr.fetchCocktails();
    } else {
      //HttpCocktailRepository hcr = HttpCocktailRepository();
      DioCocktailsClient dcc = DioCocktailsClient();

      return dcc.fetchCocktails(id);
    }
  }
}

class TestCocktailRepository {
  Future<List<Cocktail>> fetchCocktails() async {
    String api = '''
  [{"id":"1","title":"Nutella and cognac coffee cocktail","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/1.jpg"},{"id":"2","title":"Easy rhubarb cordial","difficulty":"Easy","image":"https://apipics.s3.amazonaws.com/coctails_api/2.jpg"}]
  ''';
    var _json = json.decode(api) as List;
    List<Cocktail> myList = _json.map((i) => Cocktail.fromJson(i)).toList();
    await Future.delayed(const Duration(milliseconds: 1500));
    return myList;
  }
}
