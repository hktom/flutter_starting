import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_starting/auth/repository/auth_repo.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepo authRepo = AuthRepo();
  AuthState authState = const AuthState();

  AuthBloc() : super(const AuthState());

  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is SignIn) signInStream(event);
    if (event is SignUp) signUpStream(event);
    if (event is SignOut) signOutStream(event);
  }

  Stream<AuthState> signInStream(AuthEvent event) async* {
    yield authState.copyWith(isLoading: false);
  }

  Stream<AuthState> signUpStream(AuthEvent event) async* {
    yield authState.copyWith(isLoading: false);
  }

  Stream<AuthState> signOutStream(AuthEvent event) async* {
    yield authState.copyWith(isLoading: false);
  }
}
