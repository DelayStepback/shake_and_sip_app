import 'package:bloc/bloc.dart';
import 'package:shake_and_sip_app/features/data/auth/repositories/auth_repository.dart';

import 'auth_event.dart';
import 'auth_state.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository)
      : super(const AuthState.unAuth()) {

  }

}
