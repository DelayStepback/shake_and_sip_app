// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticatedSignUp,
    required TResult Function() unAuthenticatedSignIn,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticatedSignUp,
    TResult? Function()? unAuthenticatedSignIn,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticatedSignUp,
    TResult Function()? unAuthenticatedSignIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_unAuthenticatedSignUp value)
        unAuthenticatedSignUp,
    required TResult Function(_unAuthenticatedSignIn value)
        unAuthenticatedSignIn,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult? Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticatedSignUp,
    required TResult Function() unAuthenticatedSignIn,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticatedSignUp,
    TResult? Function()? unAuthenticatedSignIn,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticatedSignUp,
    TResult Function()? unAuthenticatedSignIn,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_unAuthenticatedSignUp value)
        unAuthenticatedSignUp,
    required TResult Function(_unAuthenticatedSignIn value)
        unAuthenticatedSignIn,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult? Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticatedSignUp,
    required TResult Function() unAuthenticatedSignIn,
    required TResult Function(String error) error,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticatedSignUp,
    TResult? Function()? unAuthenticatedSignIn,
    TResult? Function(String error)? error,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticatedSignUp,
    TResult Function()? unAuthenticatedSignIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_unAuthenticatedSignUp value)
        unAuthenticatedSignUp,
    required TResult Function(_unAuthenticatedSignIn value)
        unAuthenticatedSignIn,
    required TResult Function(_Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult? Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult? Function(_Error value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$$_unAuthenticatedSignUpCopyWith<$Res> {
  factory _$$_unAuthenticatedSignUpCopyWith(_$_unAuthenticatedSignUp value,
          $Res Function(_$_unAuthenticatedSignUp) then) =
      __$$_unAuthenticatedSignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_unAuthenticatedSignUpCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_unAuthenticatedSignUp>
    implements _$$_unAuthenticatedSignUpCopyWith<$Res> {
  __$$_unAuthenticatedSignUpCopyWithImpl(_$_unAuthenticatedSignUp _value,
      $Res Function(_$_unAuthenticatedSignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_unAuthenticatedSignUp implements _unAuthenticatedSignUp {
  const _$_unAuthenticatedSignUp();

  @override
  String toString() {
    return 'AuthState.unAuthenticatedSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_unAuthenticatedSignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticatedSignUp,
    required TResult Function() unAuthenticatedSignIn,
    required TResult Function(String error) error,
  }) {
    return unAuthenticatedSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticatedSignUp,
    TResult? Function()? unAuthenticatedSignIn,
    TResult? Function(String error)? error,
  }) {
    return unAuthenticatedSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticatedSignUp,
    TResult Function()? unAuthenticatedSignIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticatedSignUp != null) {
      return unAuthenticatedSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_unAuthenticatedSignUp value)
        unAuthenticatedSignUp,
    required TResult Function(_unAuthenticatedSignIn value)
        unAuthenticatedSignIn,
    required TResult Function(_Error value) error,
  }) {
    return unAuthenticatedSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult? Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult? Function(_Error value)? error,
  }) {
    return unAuthenticatedSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticatedSignUp != null) {
      return unAuthenticatedSignUp(this);
    }
    return orElse();
  }
}

abstract class _unAuthenticatedSignUp implements AuthState {
  const factory _unAuthenticatedSignUp() = _$_unAuthenticatedSignUp;
}

/// @nodoc
abstract class _$$_unAuthenticatedSignInCopyWith<$Res> {
  factory _$$_unAuthenticatedSignInCopyWith(_$_unAuthenticatedSignIn value,
          $Res Function(_$_unAuthenticatedSignIn) then) =
      __$$_unAuthenticatedSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_unAuthenticatedSignInCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_unAuthenticatedSignIn>
    implements _$$_unAuthenticatedSignInCopyWith<$Res> {
  __$$_unAuthenticatedSignInCopyWithImpl(_$_unAuthenticatedSignIn _value,
      $Res Function(_$_unAuthenticatedSignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_unAuthenticatedSignIn implements _unAuthenticatedSignIn {
  const _$_unAuthenticatedSignIn();

  @override
  String toString() {
    return 'AuthState.unAuthenticatedSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_unAuthenticatedSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticatedSignUp,
    required TResult Function() unAuthenticatedSignIn,
    required TResult Function(String error) error,
  }) {
    return unAuthenticatedSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticatedSignUp,
    TResult? Function()? unAuthenticatedSignIn,
    TResult? Function(String error)? error,
  }) {
    return unAuthenticatedSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticatedSignUp,
    TResult Function()? unAuthenticatedSignIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticatedSignIn != null) {
      return unAuthenticatedSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_unAuthenticatedSignUp value)
        unAuthenticatedSignUp,
    required TResult Function(_unAuthenticatedSignIn value)
        unAuthenticatedSignIn,
    required TResult Function(_Error value) error,
  }) {
    return unAuthenticatedSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult? Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult? Function(_Error value)? error,
  }) {
    return unAuthenticatedSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticatedSignIn != null) {
      return unAuthenticatedSignIn(this);
    }
    return orElse();
  }
}

abstract class _unAuthenticatedSignIn implements AuthState {
  const factory _unAuthenticatedSignIn() = _$_unAuthenticatedSignIn;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticatedSignUp,
    required TResult Function() unAuthenticatedSignIn,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticatedSignUp,
    TResult? Function()? unAuthenticatedSignIn,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticatedSignUp,
    TResult Function()? unAuthenticatedSignIn,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_unAuthenticatedSignUp value)
        unAuthenticatedSignUp,
    required TResult Function(_unAuthenticatedSignIn value)
        unAuthenticatedSignIn,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult? Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_unAuthenticatedSignUp value)? unAuthenticatedSignUp,
    TResult Function(_unAuthenticatedSignIn value)? unAuthenticatedSignIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error({required final String error}) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
