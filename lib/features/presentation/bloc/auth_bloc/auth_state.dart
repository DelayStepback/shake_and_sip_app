import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;

  const factory AuthState.authenticated() = _Authenticated;

  const factory AuthState.unAuthenticatedSignUp() = _unAuthenticatedSignUp;

  const factory AuthState.unAuthenticatedSignIn() = _unAuthenticatedSignIn;

  const factory AuthState.errorSignIn({required String error}) = _ErrorSignIn;
  const factory AuthState.errorSignUp({required String error}) = _ErrorSignUp;

}
