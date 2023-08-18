// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() loadSignUp,
    required TResult Function() loadSignIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? loadSignUp,
    TResult? Function()? loadSignIn,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? loadSignUp,
    TResult Function()? loadSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(LoadSignUp value) loadSignUp,
    required TResult Function(LoadSignIn value) loadSignIn,
    required TResult Function(SignOutRequested value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(LoadSignUp value)? loadSignUp,
    TResult? Function(LoadSignIn value)? loadSignIn,
    TResult? Function(SignOutRequested value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(LoadSignUp value)? loadSignUp,
    TResult Function(LoadSignIn value)? loadSignIn,
    TResult Function(SignOutRequested value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'AuthEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() loadSignUp,
    required TResult Function() loadSignIn,
    required TResult Function() signOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? loadSignUp,
    TResult? Function()? loadSignIn,
    TResult? Function()? signOut,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? loadSignUp,
    TResult Function()? loadSignIn,
    TResult Function()? signOut,
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
    required TResult Function(Loading value) loading,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(LoadSignUp value) loadSignUp,
    required TResult Function(LoadSignIn value) loadSignIn,
    required TResult Function(SignOutRequested value) signOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(LoadSignUp value)? loadSignUp,
    TResult? Function(LoadSignIn value)? loadSignIn,
    TResult? Function(SignOutRequested value)? signOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(LoadSignUp value)? loadSignUp,
    TResult Function(LoadSignIn value)? loadSignIn,
    TResult Function(SignOutRequested value)? signOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AuthEvent {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$SignInRequestedCopyWith<$Res> {
  factory _$$SignInRequestedCopyWith(
          _$SignInRequested value, $Res Function(_$SignInRequested) then) =
      __$$SignInRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInRequested>
    implements _$$SignInRequestedCopyWith<$Res> {
  __$$SignInRequestedCopyWithImpl(
      _$SignInRequested _value, $Res Function(_$SignInRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInRequested(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInRequested implements SignInRequested {
  const _$SignInRequested({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInRequested &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInRequestedCopyWith<_$SignInRequested> get copyWith =>
      __$$SignInRequestedCopyWithImpl<_$SignInRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() loadSignUp,
    required TResult Function() loadSignIn,
    required TResult Function() signOut,
  }) {
    return signInRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? loadSignUp,
    TResult? Function()? loadSignIn,
    TResult? Function()? signOut,
  }) {
    return signInRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? loadSignUp,
    TResult Function()? loadSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(LoadSignUp value) loadSignUp,
    required TResult Function(LoadSignIn value) loadSignIn,
    required TResult Function(SignOutRequested value) signOut,
  }) {
    return signInRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(LoadSignUp value)? loadSignUp,
    TResult? Function(LoadSignIn value)? loadSignIn,
    TResult? Function(SignOutRequested value)? signOut,
  }) {
    return signInRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(LoadSignUp value)? loadSignUp,
    TResult Function(LoadSignIn value)? loadSignIn,
    TResult Function(SignOutRequested value)? signOut,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(this);
    }
    return orElse();
  }
}

abstract class SignInRequested implements AuthEvent {
  const factory SignInRequested(
      {required final String email,
      required final String password}) = _$SignInRequested;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInRequestedCopyWith<_$SignInRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpRequestedCopyWith<$Res> {
  factory _$$SignUpRequestedCopyWith(
          _$SignUpRequested value, $Res Function(_$SignUpRequested) then) =
      __$$SignUpRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignUpRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpRequested>
    implements _$$SignUpRequestedCopyWith<$Res> {
  __$$SignUpRequestedCopyWithImpl(
      _$SignUpRequested _value, $Res Function(_$SignUpRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpRequested(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpRequested implements SignUpRequested {
  const _$SignUpRequested({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUpRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequested &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestedCopyWith<_$SignUpRequested> get copyWith =>
      __$$SignUpRequestedCopyWithImpl<_$SignUpRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() loadSignUp,
    required TResult Function() loadSignIn,
    required TResult Function() signOut,
  }) {
    return signUpRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? loadSignUp,
    TResult? Function()? loadSignIn,
    TResult? Function()? signOut,
  }) {
    return signUpRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? loadSignUp,
    TResult Function()? loadSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(LoadSignUp value) loadSignUp,
    required TResult Function(LoadSignIn value) loadSignIn,
    required TResult Function(SignOutRequested value) signOut,
  }) {
    return signUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(LoadSignUp value)? loadSignUp,
    TResult? Function(LoadSignIn value)? loadSignIn,
    TResult? Function(SignOutRequested value)? signOut,
  }) {
    return signUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(LoadSignUp value)? loadSignUp,
    TResult Function(LoadSignIn value)? loadSignIn,
    TResult Function(SignOutRequested value)? signOut,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(this);
    }
    return orElse();
  }
}

abstract class SignUpRequested implements AuthEvent {
  const factory SignUpRequested(
      {required final String email,
      required final String password}) = _$SignUpRequested;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignUpRequestedCopyWith<_$SignUpRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSignUpCopyWith<$Res> {
  factory _$$LoadSignUpCopyWith(
          _$LoadSignUp value, $Res Function(_$LoadSignUp) then) =
      __$$LoadSignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSignUpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoadSignUp>
    implements _$$LoadSignUpCopyWith<$Res> {
  __$$LoadSignUpCopyWithImpl(
      _$LoadSignUp _value, $Res Function(_$LoadSignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadSignUp implements LoadSignUp {
  const _$LoadSignUp();

  @override
  String toString() {
    return 'AuthEvent.loadSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadSignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() loadSignUp,
    required TResult Function() loadSignIn,
    required TResult Function() signOut,
  }) {
    return loadSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? loadSignUp,
    TResult? Function()? loadSignIn,
    TResult? Function()? signOut,
  }) {
    return loadSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? loadSignUp,
    TResult Function()? loadSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (loadSignUp != null) {
      return loadSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(LoadSignUp value) loadSignUp,
    required TResult Function(LoadSignIn value) loadSignIn,
    required TResult Function(SignOutRequested value) signOut,
  }) {
    return loadSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(LoadSignUp value)? loadSignUp,
    TResult? Function(LoadSignIn value)? loadSignIn,
    TResult? Function(SignOutRequested value)? signOut,
  }) {
    return loadSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(LoadSignUp value)? loadSignUp,
    TResult Function(LoadSignIn value)? loadSignIn,
    TResult Function(SignOutRequested value)? signOut,
    required TResult orElse(),
  }) {
    if (loadSignUp != null) {
      return loadSignUp(this);
    }
    return orElse();
  }
}

abstract class LoadSignUp implements AuthEvent {
  const factory LoadSignUp() = _$LoadSignUp;
}

/// @nodoc
abstract class _$$LoadSignInCopyWith<$Res> {
  factory _$$LoadSignInCopyWith(
          _$LoadSignIn value, $Res Function(_$LoadSignIn) then) =
      __$$LoadSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoadSignIn>
    implements _$$LoadSignInCopyWith<$Res> {
  __$$LoadSignInCopyWithImpl(
      _$LoadSignIn _value, $Res Function(_$LoadSignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadSignIn implements LoadSignIn {
  const _$LoadSignIn();

  @override
  String toString() {
    return 'AuthEvent.loadSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() loadSignUp,
    required TResult Function() loadSignIn,
    required TResult Function() signOut,
  }) {
    return loadSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? loadSignUp,
    TResult? Function()? loadSignIn,
    TResult? Function()? signOut,
  }) {
    return loadSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? loadSignUp,
    TResult Function()? loadSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (loadSignIn != null) {
      return loadSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(LoadSignUp value) loadSignUp,
    required TResult Function(LoadSignIn value) loadSignIn,
    required TResult Function(SignOutRequested value) signOut,
  }) {
    return loadSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(LoadSignUp value)? loadSignUp,
    TResult? Function(LoadSignIn value)? loadSignIn,
    TResult? Function(SignOutRequested value)? signOut,
  }) {
    return loadSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(LoadSignUp value)? loadSignUp,
    TResult Function(LoadSignIn value)? loadSignIn,
    TResult Function(SignOutRequested value)? signOut,
    required TResult orElse(),
  }) {
    if (loadSignIn != null) {
      return loadSignIn(this);
    }
    return orElse();
  }
}

abstract class LoadSignIn implements AuthEvent {
  const factory LoadSignIn() = _$LoadSignIn;
}

/// @nodoc
abstract class _$$SignOutRequestedCopyWith<$Res> {
  factory _$$SignOutRequestedCopyWith(
          _$SignOutRequested value, $Res Function(_$SignOutRequested) then) =
      __$$SignOutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutRequested>
    implements _$$SignOutRequestedCopyWith<$Res> {
  __$$SignOutRequestedCopyWithImpl(
      _$SignOutRequested _value, $Res Function(_$SignOutRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutRequested implements SignOutRequested {
  const _$SignOutRequested();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() loadSignUp,
    required TResult Function() loadSignIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? loadSignUp,
    TResult? Function()? loadSignIn,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? loadSignUp,
    TResult Function()? loadSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(LoadSignUp value) loadSignUp,
    required TResult Function(LoadSignIn value) loadSignIn,
    required TResult Function(SignOutRequested value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(LoadSignUp value)? loadSignUp,
    TResult? Function(LoadSignIn value)? loadSignIn,
    TResult? Function(SignOutRequested value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(LoadSignUp value)? loadSignUp,
    TResult Function(LoadSignIn value)? loadSignIn,
    TResult Function(SignOutRequested value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutRequested implements AuthEvent {
  const factory SignOutRequested() = _$SignOutRequested;
}
