// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initDetailPage,
    required TResult Function(CocktailEntity cocktail) addFavCocktail,
    required TResult Function(CocktailEntity cocktail) deleteFavCocktail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initDetailPage,
    TResult? Function(CocktailEntity cocktail)? addFavCocktail,
    TResult? Function(CocktailEntity cocktail)? deleteFavCocktail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initDetailPage,
    TResult Function(CocktailEntity cocktail)? addFavCocktail,
    TResult Function(CocktailEntity cocktail)? deleteFavCocktail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDetailsEvent value) initDetailPage,
    required TResult Function(AddFavCocktailEvent value) addFavCocktail,
    required TResult Function(DeleteFavCocktailEvent value) deleteFavCocktail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDetailsEvent value)? initDetailPage,
    TResult? Function(AddFavCocktailEvent value)? addFavCocktail,
    TResult? Function(DeleteFavCocktailEvent value)? deleteFavCocktail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDetailsEvent value)? initDetailPage,
    TResult Function(AddFavCocktailEvent value)? addFavCocktail,
    TResult Function(DeleteFavCocktailEvent value)? deleteFavCocktail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingDetailsEventCopyWith<$Res> {
  factory _$$LoadingDetailsEventCopyWith(_$LoadingDetailsEvent value,
          $Res Function(_$LoadingDetailsEvent) then) =
      __$$LoadingDetailsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$LoadingDetailsEventCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$LoadingDetailsEvent>
    implements _$$LoadingDetailsEventCopyWith<$Res> {
  __$$LoadingDetailsEventCopyWithImpl(
      _$LoadingDetailsEvent _value, $Res Function(_$LoadingDetailsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LoadingDetailsEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingDetailsEvent implements LoadingDetailsEvent {
  const _$LoadingDetailsEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'DetailEvent.initDetailPage(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDetailsEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingDetailsEventCopyWith<_$LoadingDetailsEvent> get copyWith =>
      __$$LoadingDetailsEventCopyWithImpl<_$LoadingDetailsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initDetailPage,
    required TResult Function(CocktailEntity cocktail) addFavCocktail,
    required TResult Function(CocktailEntity cocktail) deleteFavCocktail,
  }) {
    return initDetailPage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initDetailPage,
    TResult? Function(CocktailEntity cocktail)? addFavCocktail,
    TResult? Function(CocktailEntity cocktail)? deleteFavCocktail,
  }) {
    return initDetailPage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initDetailPage,
    TResult Function(CocktailEntity cocktail)? addFavCocktail,
    TResult Function(CocktailEntity cocktail)? deleteFavCocktail,
    required TResult orElse(),
  }) {
    if (initDetailPage != null) {
      return initDetailPage(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDetailsEvent value) initDetailPage,
    required TResult Function(AddFavCocktailEvent value) addFavCocktail,
    required TResult Function(DeleteFavCocktailEvent value) deleteFavCocktail,
  }) {
    return initDetailPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDetailsEvent value)? initDetailPage,
    TResult? Function(AddFavCocktailEvent value)? addFavCocktail,
    TResult? Function(DeleteFavCocktailEvent value)? deleteFavCocktail,
  }) {
    return initDetailPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDetailsEvent value)? initDetailPage,
    TResult Function(AddFavCocktailEvent value)? addFavCocktail,
    TResult Function(DeleteFavCocktailEvent value)? deleteFavCocktail,
    required TResult orElse(),
  }) {
    if (initDetailPage != null) {
      return initDetailPage(this);
    }
    return orElse();
  }
}

abstract class LoadingDetailsEvent implements DetailEvent {
  const factory LoadingDetailsEvent({required final String id}) =
      _$LoadingDetailsEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$LoadingDetailsEventCopyWith<_$LoadingDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavCocktailEventCopyWith<$Res> {
  factory _$$AddFavCocktailEventCopyWith(_$AddFavCocktailEvent value,
          $Res Function(_$AddFavCocktailEvent) then) =
      __$$AddFavCocktailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CocktailEntity cocktail});
}

/// @nodoc
class __$$AddFavCocktailEventCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$AddFavCocktailEvent>
    implements _$$AddFavCocktailEventCopyWith<$Res> {
  __$$AddFavCocktailEventCopyWithImpl(
      _$AddFavCocktailEvent _value, $Res Function(_$AddFavCocktailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cocktail = null,
  }) {
    return _then(_$AddFavCocktailEvent(
      null == cocktail
          ? _value.cocktail
          : cocktail // ignore: cast_nullable_to_non_nullable
              as CocktailEntity,
    ));
  }
}

/// @nodoc

class _$AddFavCocktailEvent implements AddFavCocktailEvent {
  const _$AddFavCocktailEvent(this.cocktail);

  @override
  final CocktailEntity cocktail;

  @override
  String toString() {
    return 'DetailEvent.addFavCocktail(cocktail: $cocktail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavCocktailEvent &&
            (identical(other.cocktail, cocktail) ||
                other.cocktail == cocktail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cocktail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavCocktailEventCopyWith<_$AddFavCocktailEvent> get copyWith =>
      __$$AddFavCocktailEventCopyWithImpl<_$AddFavCocktailEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initDetailPage,
    required TResult Function(CocktailEntity cocktail) addFavCocktail,
    required TResult Function(CocktailEntity cocktail) deleteFavCocktail,
  }) {
    return addFavCocktail(cocktail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initDetailPage,
    TResult? Function(CocktailEntity cocktail)? addFavCocktail,
    TResult? Function(CocktailEntity cocktail)? deleteFavCocktail,
  }) {
    return addFavCocktail?.call(cocktail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initDetailPage,
    TResult Function(CocktailEntity cocktail)? addFavCocktail,
    TResult Function(CocktailEntity cocktail)? deleteFavCocktail,
    required TResult orElse(),
  }) {
    if (addFavCocktail != null) {
      return addFavCocktail(cocktail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDetailsEvent value) initDetailPage,
    required TResult Function(AddFavCocktailEvent value) addFavCocktail,
    required TResult Function(DeleteFavCocktailEvent value) deleteFavCocktail,
  }) {
    return addFavCocktail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDetailsEvent value)? initDetailPage,
    TResult? Function(AddFavCocktailEvent value)? addFavCocktail,
    TResult? Function(DeleteFavCocktailEvent value)? deleteFavCocktail,
  }) {
    return addFavCocktail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDetailsEvent value)? initDetailPage,
    TResult Function(AddFavCocktailEvent value)? addFavCocktail,
    TResult Function(DeleteFavCocktailEvent value)? deleteFavCocktail,
    required TResult orElse(),
  }) {
    if (addFavCocktail != null) {
      return addFavCocktail(this);
    }
    return orElse();
  }
}

abstract class AddFavCocktailEvent implements DetailEvent {
  const factory AddFavCocktailEvent(final CocktailEntity cocktail) =
      _$AddFavCocktailEvent;

  CocktailEntity get cocktail;
  @JsonKey(ignore: true)
  _$$AddFavCocktailEventCopyWith<_$AddFavCocktailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFavCocktailEventCopyWith<$Res> {
  factory _$$DeleteFavCocktailEventCopyWith(_$DeleteFavCocktailEvent value,
          $Res Function(_$DeleteFavCocktailEvent) then) =
      __$$DeleteFavCocktailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CocktailEntity cocktail});
}

/// @nodoc
class __$$DeleteFavCocktailEventCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$DeleteFavCocktailEvent>
    implements _$$DeleteFavCocktailEventCopyWith<$Res> {
  __$$DeleteFavCocktailEventCopyWithImpl(_$DeleteFavCocktailEvent _value,
      $Res Function(_$DeleteFavCocktailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cocktail = null,
  }) {
    return _then(_$DeleteFavCocktailEvent(
      null == cocktail
          ? _value.cocktail
          : cocktail // ignore: cast_nullable_to_non_nullable
              as CocktailEntity,
    ));
  }
}

/// @nodoc

class _$DeleteFavCocktailEvent implements DeleteFavCocktailEvent {
  const _$DeleteFavCocktailEvent(this.cocktail);

  @override
  final CocktailEntity cocktail;

  @override
  String toString() {
    return 'DetailEvent.deleteFavCocktail(cocktail: $cocktail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavCocktailEvent &&
            (identical(other.cocktail, cocktail) ||
                other.cocktail == cocktail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cocktail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavCocktailEventCopyWith<_$DeleteFavCocktailEvent> get copyWith =>
      __$$DeleteFavCocktailEventCopyWithImpl<_$DeleteFavCocktailEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initDetailPage,
    required TResult Function(CocktailEntity cocktail) addFavCocktail,
    required TResult Function(CocktailEntity cocktail) deleteFavCocktail,
  }) {
    return deleteFavCocktail(cocktail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initDetailPage,
    TResult? Function(CocktailEntity cocktail)? addFavCocktail,
    TResult? Function(CocktailEntity cocktail)? deleteFavCocktail,
  }) {
    return deleteFavCocktail?.call(cocktail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initDetailPage,
    TResult Function(CocktailEntity cocktail)? addFavCocktail,
    TResult Function(CocktailEntity cocktail)? deleteFavCocktail,
    required TResult orElse(),
  }) {
    if (deleteFavCocktail != null) {
      return deleteFavCocktail(cocktail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDetailsEvent value) initDetailPage,
    required TResult Function(AddFavCocktailEvent value) addFavCocktail,
    required TResult Function(DeleteFavCocktailEvent value) deleteFavCocktail,
  }) {
    return deleteFavCocktail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDetailsEvent value)? initDetailPage,
    TResult? Function(AddFavCocktailEvent value)? addFavCocktail,
    TResult? Function(DeleteFavCocktailEvent value)? deleteFavCocktail,
  }) {
    return deleteFavCocktail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDetailsEvent value)? initDetailPage,
    TResult Function(AddFavCocktailEvent value)? addFavCocktail,
    TResult Function(DeleteFavCocktailEvent value)? deleteFavCocktail,
    required TResult orElse(),
  }) {
    if (deleteFavCocktail != null) {
      return deleteFavCocktail(this);
    }
    return orElse();
  }
}

abstract class DeleteFavCocktailEvent implements DetailEvent {
  const factory DeleteFavCocktailEvent(final CocktailEntity cocktail) =
      _$DeleteFavCocktailEvent;

  CocktailEntity get cocktail;
  @JsonKey(ignore: true)
  _$$DeleteFavCocktailEventCopyWith<_$DeleteFavCocktailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
