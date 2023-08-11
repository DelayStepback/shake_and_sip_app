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
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String get difficulty => throw _privateConstructorUsedError;
  @HiveField(3)
  String get image => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get portion => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get time => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(7)
  List<String>? get ingredients => throw _privateConstructorUsedError;
  @HiveField(8)
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
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String difficulty,
      @HiveField(3) String image,
      @HiveField(4) String? portion,
      @HiveField(5) String? time,
      @HiveField(6) String? description,
      @HiveField(7) List<String>? ingredients,
      @HiveField(8) List<Map<String, String>>? method});
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
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String difficulty,
      @HiveField(3) String image,
      @HiveField(4) String? portion,
      @HiveField(5) String? time,
      @HiveField(6) String? description,
      @HiveField(7) List<String>? ingredients,
      @HiveField(8) List<Map<String, String>>? method});
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
@HiveType(typeId: 0)
class _$_Cocktail extends _Cocktail {
  _$_Cocktail(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.difficulty,
      @HiveField(3) required this.image,
      @HiveField(4) this.portion,
      @HiveField(5) this.time,
      @HiveField(6) this.description,
      @HiveField(7) final List<String>? ingredients,
      @HiveField(8) final List<Map<String, String>>? method})
      : _ingredients = ingredients,
        _method = method,
        super._();

  factory _$_Cocktail.fromJson(Map<String, dynamic> json) =>
      _$$_CocktailFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String difficulty;
  @override
  @HiveField(3)
  final String image;
  @override
  @HiveField(4)
  final String? portion;
  @override
  @HiveField(5)
  final String? time;
  @override
  @HiveField(6)
  final String? description;
  final List<String>? _ingredients;
  @override
  @HiveField(7)
  List<String>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, String>>? _method;
  @override
  @HiveField(8)
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

abstract class _Cocktail extends Cocktail {
  factory _Cocktail(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String title,
      @HiveField(2) required final String difficulty,
      @HiveField(3) required final String image,
      @HiveField(4) final String? portion,
      @HiveField(5) final String? time,
      @HiveField(6) final String? description,
      @HiveField(7) final List<String>? ingredients,
      @HiveField(8) final List<Map<String, String>>? method}) = _$_Cocktail;
  _Cocktail._() : super._();

  factory _Cocktail.fromJson(Map<String, dynamic> json) = _$_Cocktail.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  String get difficulty;
  @override
  @HiveField(3)
  String get image;
  @override
  @HiveField(4)
  String? get portion;
  @override
  @HiveField(5)
  String? get time;
  @override
  @HiveField(6)
  String? get description;
  @override
  @HiveField(7)
  List<String>? get ingredients;
  @override
  @HiveField(8)
  List<Map<String, String>>? get method;
  @override
  @JsonKey(ignore: true)
  _$$_CocktailCopyWith<_$_Cocktail> get copyWith =>
      throw _privateConstructorUsedError;
}
