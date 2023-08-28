import 'package:shake_and_sip_app/features/data/models/cocktail_dto.dart';
import 'package:shake_and_sip_app/features/domain/entities/cocktail_entity.dart';

CocktailDto cocktailEntityToDto(CocktailEntity cockEnt){
  CocktailDto cockDto = CocktailDto(
    id: cockEnt.id,
    title: cockEnt.title,
     difficulty: cockEnt.difficulty,
     image: cockEnt.image,
     portion: cockEnt.portion,
     time: cockEnt.time,
     description: cockEnt.description,
     ingredients: cockEnt.ingredients,
    method: cockEnt.method,
  );
  return cockDto;
}