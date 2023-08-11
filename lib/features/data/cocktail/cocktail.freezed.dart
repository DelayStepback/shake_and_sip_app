// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cocktail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cocktail _$CocktailFromJson(Map<String, dynamic> json) {
  return _Cocktail.fromJson(json);
}

/// @nodoc
mixin _$Cocktail {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get portion => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get ingredients => throw _privateConstructorUsedError;
  List<Map<String, String>>? get method => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CocktailCopyWith<Cocktail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailCopyWith<$Res> {
  factory $CocktailCopyWith(Cocktail value, $Res Function(Cocktail) then) =
      _$CocktailCopyWithImpl<$Res, Cocktail>;
  @useResult
  $Res call(
      {String id,
      String title,
      String difficulty,
      String image,
      String? portion,
      String? time,
      String? description,
      List<String>? ingredients,
      List<Map<String, String>>? method});
}

/// @nodoc
class _$CocktailCopyWithImpl<$Res, $Val extends Cocktail>
    implements $CocktailCopyWith<$Res> {
  _$CocktailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? difficulty = null,
    Object? image = null,
    Object? portion = freezed,
    Object? time = freezed,
    Object? description = freezed,
    Object? ingredients = freezed,
    Object? method = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      portion: freezed == portion
          ? _value.portion
          : portion // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CocktailCopyWith<$Res> implements $CocktailCopyWith<$Res> {
  factory _$$_CocktailCopyWith(
          _$_Cocktail value, $Res Function(_$_Cocktail) then) =
      __$$_CocktailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String difficulty,
      String image,
      String? portion,
      String? time,
      String? description,
      List<String>? ingredients,
      List<Map<String, String>>? method});
}

/// @nodoc
class __$$_CocktailCopyWithImpl<$Res>
    extends _$CocktailCopyWithImpl<$Res, _$_Cocktail>
    implements _$$_CocktailCopyWith<$Res> {
  __$$_CocktailCopyWithImpl(
      _$_Cocktail _value, $Res Function(_$_Cocktail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? difficulty = null,
    Object? image = null,
    Object? portion = freezed,
    Object? time = freezed,
    Object? description = freezed,
    Object? ingredients = freezed,
    Object? method = freezed,
  }) {
    return _then(_$_Cocktail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      portion: freezed == portion
          ? _value.portion
          : portion // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      method: freezed == method
          ? _value._method
          : method // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cocktail implements _Cocktail {
  const _$_Cocktail(
      {required this.id,
      required this.title,
      required this.difficulty,
      required this.image,
      this.portion,
      this.time,
      this.description,
      final List<String>? ingredients,
      final List<Map<String, String>>? method})
      : _ingredients = ingredients,
        _method = method;

  factory _$_Cocktail.fromJson(Map<String, dynamic> json) =>
      _$$_CocktailFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String difficulty;
  @override
  final String image;
  @override
  final String? portion;
  @override
  final String? time;
  @override
  final String? description;
  final List<String>? _ingredients;
  @override
  List<String>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, String>>? _method;
  @override
  List<Map<String, String>>? get method {
    final value = _method;
    if (value == null) return null;
    if (_method is EqualUnmodifiableListView) return _method;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Cocktail(id: $id, title: $title, difficulty: $difficulty, image: $image, portion: $portion, time: $time, description: $description, ingredients: $ingredients, method: $method)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cocktail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.portion, portion) || other.portion == portion) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other._method, _method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      difficulty,
      image,
      portion,
      time,
      description,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_method));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CocktailCopyWith<_$_Cocktail> get copyWith =>
      __$$_CocktailCopyWithImpl<_$_Cocktail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CocktailToJson(
      this,
    );
  }
}

abstract class _Cocktail implements Cocktail {
  const factory _Cocktail(
      {required final String id,
      required final String title,
      required final String difficulty,
      required final String image,
      final String? portion,
      final String? time,
      final String? description,
      final List<String>? ingredients,
      final List<Map<String, String>>? method}) = _$_Cocktail;

  factory _Cocktail.fromJson(Map<String, dynamic> json) = _$_Cocktail.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get difficulty;
  @override
  String get image;
  @override
  String? get portion;
  @override
  String? get time;
  @override
  String? get description;
  @override
  List<String>? get ingredients;
  @override
  List<Map<String, String>>? get method;
  @override
  @JsonKey(ignore: true)
  _$$_CocktailCopyWith<_$_Cocktail> get copyWith =>
      throw _privateConstructorUsedError;
}
