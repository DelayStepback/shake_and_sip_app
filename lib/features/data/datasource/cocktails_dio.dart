import 'package:dio/dio.dart';
import 'package:shake_and_sip_app/features/data/models/cocktail_dto.dart';

class DioCocktailsClient {
  final Dio _dio = Dio(BaseOptions(headers: {
    'X-RapidAPI-Key': '7adffd87dcmsh15ca20110d6de4dp18cab0jsnb838120a4d40',
    'X-RapidAPI-Host': 'the-cocktail-db3.p.rapidapi.com'
  }));
  final _baseUrl = 'https://the-cocktail-db3.p.rapidapi.com/';

  Future<List<CocktailDto>?> fetchCocktails(String id) async {
    List<CocktailDto>? cocktails;
    try {
      if (id == 'none') {
        Response cocktailsData = await _dio.get(_baseUrl);
        List<CocktailDto> cocktailsList = List<CocktailDto>.from(
          cocktailsData.data.map(
            (i) => CocktailDto.fromJson(i),
          ),
        );
        cocktails = cocktailsList;
      } else {
        Response cocktailData = await _dio.get('$_baseUrl$id');
        CocktailDto cocktail = CocktailDto.fromJson(cocktailData.data);
        cocktails = [cocktail];
      }
    } on DioException catch (e) {
      throw e.message.toString();
    }
    return cocktails;
  }
}
