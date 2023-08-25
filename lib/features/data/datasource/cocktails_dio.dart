import 'package:dio/dio.dart';
import 'package:shake_and_sip_app/features/data/models/cocktail.dart';

class DioCocktailsClient {
  final Dio _dio = Dio(BaseOptions(headers: {
    'X-RapidAPI-Key': '7adffd87dcmsh15ca20110d6de4dp18cab0jsnb838120a4d40',
    'X-RapidAPI-Host': 'the-cocktail-db3.p.rapidapi.com'
  }));
  final _baseUrl = 'https://the-cocktail-db3.p.rapidapi.com/';

  Future<List<Cocktail>?> fetchCocktails(String id) async {
    List<Cocktail>? cocktails;
    try {
      if (id == 'none') {
        Response cocktailsData = await _dio.get(_baseUrl);
        List<Cocktail> cocktailsList = List<Cocktail>.from(
            cocktailsData.data.map((i) => Cocktail.fromJson(i)));
        cocktails = cocktailsList;
      } else {
        Response cocktailData = await _dio.get('$_baseUrl$id');
        Cocktail cocktail = Cocktail.fromJson(cocktailData.data);
        cocktails = [cocktail];
      }
    } on DioException catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    }
    return cocktails;
  }
}
