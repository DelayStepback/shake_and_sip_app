// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cocktail _$$_CocktailFromJson(Map<String, dynamic> json) => _$_Cocktail(
      id: json['id'] as String,
      title: json['title'] as String,
      difficulty: json['difficulty'] as String,
      image: json['image'] as String,
      portion: json['portion'] as String?,
      time: json['time'] as String?,
      description: json['description'] as String?,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      method: (json['method'] as List<dynamic>?)
          ?.map((e) => Map<String, String>.from(e as Map))
          .toList(),
    );

Map<String, dynamic> _$$_CocktailToJson(_$_Cocktail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'difficulty': instance.difficulty,
      'image': instance.image,
      'portion': instance.portion,
      'time': instance.time,
      'description': instance.description,
      'ingredients': instance.ingredients,
      'method': instance.method,
    };
