import 'package:bloc/bloc.dart';
import '../../../domain/repository/auth_repository.dart';
import '../../../domain/repository/cocktails_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final CocktailRepository _cocktailRepository;

  AuthBloc(this._authRepository, this._cocktailRepository)
      : super(const AuthState.unAuthenticatedSignUp()) {
    on<SignInRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await _authRepository.signIn(
            email: event.email, password: event.password);
        _cocktailRepository.syncCocktail();
        emit(const AuthState.authenticated());
      } catch (e) {
        emit(
          AuthState.error(error: e.toString()),
        );
      }
    });
    on<SignUpRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await _authRepository.signUp(
            email: event.email, password: event.password);
        emit(const AuthState.authenticated());
      } catch (e) {
        emit(
          AuthState.error(error: e.toString()),
        );
      }
    });
    on<SignOutRequested>((event, emit) async {
      emit(const AuthState.loading());

      await _authRepository.signOut();
      _cocktailRepository.deleteFromDisk();
      emit(
        const AuthState.unAuthenticatedSignIn(),
      );
    });

    on<LoadSignIn>((event, emit) async {
      emit(
        const AuthState.loading(),
      );
      emit(
        const AuthState.unAuthenticatedSignIn(),
      );
    });
    on<LoadSignUp>((event, emit) async {
      emit(
        const AuthState.loading(),
      );
      emit(
        const AuthState.unAuthenticatedSignUp(),
      );
    });
    on<AlreadyLogged>((event, emit) async {
      emit(
        const AuthState.authenticated(),
      );
    });

    on<ChangePassword>((ChangePassword event, emit) async {
      await _authRepository.changePassword(event.password);
    });
  }
}
