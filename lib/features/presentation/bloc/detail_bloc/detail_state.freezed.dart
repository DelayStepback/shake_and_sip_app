// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Cocktail cocktailDetailed, bool fav) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Cocktail cocktailDetailed, bool fav)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Cocktail cocktailDetailed, bool fav)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailLoading value) loading,
    required TResult Function(_DetailLoaded value) loaded,
    required TResult Function(_DetailError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailLoading value)? loading,
    TResult? Function(_DetailLoaded value)? loaded,
    TResult? Function(_DetailError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailLoading value)? loading,
    TResult Function(_DetailLoaded value)? loaded,
    TResult Function(_DetailError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DetailLoadingCopyWith<$Res> {
  factory _$$_DetailLoadingCopyWith(
          _$_DetailLoading value, $Res Function(_$_DetailLoading) then) =
      __$$_DetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DetailLoadingCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_DetailLoading>
    implements _$$_DetailLoadingCopyWith<$Res> {
  __$$_DetailLoadingCopyWithImpl(
      _$_DetailLoading _value, $Res Function(_$_DetailLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DetailLoading implements _DetailLoading {
  const _$_DetailLoading();

  @override
  String toString() {
    return 'DetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Cocktail cocktailDetailed, bool fav) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Cocktail cocktailDetailed, bool fav)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Cocktail cocktailDetailed, bool fav)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailLoading value) loading,
    required TResult Function(_DetailLoaded value) loaded,
    required TResult Function(_DetailError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailLoading value)? loading,
    TResult? Function(_DetailLoaded value)? loaded,
    TResult? Function(_DetailError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailLoading value)? loading,
    TResult Function(_DetailLoaded value)? loaded,
    TResult Function(_DetailError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DetailLoading implements DetailState {
  const factory _DetailLoading() = _$_DetailLoading;
}

/// @nodoc
abstract class _$$_DetailLoadedCopyWith<$Res> {
  factory _$$_DetailLoadedCopyWith(
          _$_DetailLoaded value, $Res Function(_$_DetailLoaded) then) =
      __$$_DetailLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Cocktail cocktailDetailed, bool fav});

  $CocktailCopyWith<$Res> get cocktailDetailed;
}

/// @nodoc
class __$$_DetailLoadedCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_DetailLoaded>
    implements _$$_DetailLoadedCopyWith<$Res> {
  __$$_DetailLoadedCopyWithImpl(
      _$_DetailLoaded _value, $Res Function(_$_DetailLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cocktailDetailed = null,
    Object? fav = null,
  }) {
    return _then(_$_DetailLoaded(
      cocktailDetailed: null == cocktailDetailed
          ? _value.cocktailDetailed
          : cocktailDetailed // ignore: cast_nullable_to_non_nullable
              as Cocktail,
      fav: null == fav
          ? _value.fav
          : fav // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CocktailCopyWith<$Res> get cocktailDetailed {
    return $CocktailCopyWith<$Res>(_value.cocktailDetailed, (value) {
      return _then(_value.copyWith(cocktailDetailed: value));
    });
  }
}

/// @nodoc

class _$_DetailLoaded implements _DetailLoaded {
  const _$_DetailLoaded({required this.cocktailDetailed, required this.fav});

  @override
  final Cocktail cocktailDetailed;
  @override
  final bool fav;

  @override
  String toString() {
    return 'DetailState.loaded(cocktailDetailed: $cocktailDetailed, fav: $fav)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailLoaded &&
            (identical(other.cocktailDetailed, cocktailDetailed) ||
                other.cocktailDetailed == cocktailDetailed) &&
            (identical(other.fav, fav) || other.fav == fav));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cocktailDetailed, fav);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailLoadedCopyWith<_$_DetailLoaded> get copyWith =>
      __$$_DetailLoadedCopyWithImpl<_$_DetailLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Cocktail cocktailDetailed, bool fav) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(cocktailDetailed, fav);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Cocktail cocktailDetailed, bool fav)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(cocktailDetailed, fav);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Cocktail cocktailDetailed, bool fav)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cocktailDetailed, fav);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailLoading value) loading,
    required TResult Function(_DetailLoaded value) loaded,
    required TResult Function(_DetailError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailLoading value)? loading,
    TResult? Function(_DetailLoaded value)? loaded,
    TResult? Function(_DetailError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailLoading value)? loading,
    TResult Function(_DetailLoaded value)? loaded,
    TResult Function(_DetailError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _DetailLoaded implements DetailState {
  const factory _DetailLoaded(
      {required final Cocktail cocktailDetailed,
      required final bool fav}) = _$_DetailLoaded;

  Cocktail get cocktailDetailed;
  bool get fav;
  @JsonKey(ignore: true)
  _$$_DetailLoadedCopyWith<_$_DetailLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DetailErrorCopyWith<$Res> {
  factory _$$_DetailErrorCopyWith(
          _$_DetailError value, $Res Function(_$_DetailError) then) =
      __$$_DetailErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_DetailErrorCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_DetailError>
    implements _$$_DetailErrorCopyWith<$Res> {
  __$$_DetailErrorCopyWithImpl(
      _$_DetailError _value, $Res Function(_$_DetailError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_DetailError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DetailError implements _DetailError {
  const _$_DetailError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'DetailState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailErrorCopyWith<_$_DetailError> get copyWith =>
      __$$_DetailErrorCopyWithImpl<_$_DetailError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Cocktail cocktailDetailed, bool fav) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Cocktail cocktailDetailed, bool fav)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Cocktail cocktailDetailed, bool fav)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailLoading value) loading,
    required TResult Function(_DetailLoaded value) loaded,
    required TResult Function(_DetailError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailLoading value)? loading,
    TResult? Function(_DetailLoaded value)? loaded,
    TResult? Function(_DetailError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailLoading value)? loading,
    TResult Function(_DetailLoaded value)? loaded,
    TResult Function(_DetailError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DetailError implements DetailState {
  const factory _DetailError({required final String error}) = _$_DetailError;

  String get error;
  @JsonKey(ignore: true)
  _$$_DetailErrorCopyWith<_$_DetailError> get copyWith =>
      throw _privateConstructorUsedError;
}
