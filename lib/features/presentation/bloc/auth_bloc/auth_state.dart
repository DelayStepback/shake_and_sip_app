import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
@freezed
class AuthState with _$AuthState{
  const factory AuthState.loading() = _Loading;
  const factory AuthState.unAuth() = _unAuthenticated;

}