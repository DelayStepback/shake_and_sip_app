import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loading() = Loading;

  const factory AuthEvent.alreadyLogged() = AlreadyLogged;

  const factory AuthEvent.signInRequested(
      {required String email, required String password}) = SignInRequested;

  const factory AuthEvent.signUpRequested(
      {required String email, required String password}) = SignUpRequested;

  const factory AuthEvent.loadSignUp() = LoadSignUp;

  const factory AuthEvent.loadSignIn() = LoadSignIn;

  const factory AuthEvent.changePassword({required String password}) =
      ChangePassword;

  const factory AuthEvent.signOut() = SignOutRequested;
}
