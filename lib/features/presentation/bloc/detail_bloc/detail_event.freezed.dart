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
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) initDetailPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initDetailPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initDetailPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingDetailsEvent value) initDetailPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDetailsEvent value)? initDetailPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDetailsEvent value)? initDetailPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailEventCopyWith<DetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingDetailsEventCopyWith<$Res>
    implements $DetailEventCopyWith<$Res> {
  factory _$$LoadingDetailsEventCopyWith(_$LoadingDetailsEvent value,
          $Res Function(_$LoadingDetailsEvent) then) =
      __$$LoadingDetailsEventCopyWithImpl<$Res>;
  @override
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
  }) {
    return initDetailPage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? initDetailPage,
  }) {
    return initDetailPage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? initDetailPage,
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
  }) {
    return initDetailPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingDetailsEvent value)? initDetailPage,
  }) {
    return initDetailPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingDetailsEvent value)? initDetailPage,
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

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$LoadingDetailsEventCopyWith<_$LoadingDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
