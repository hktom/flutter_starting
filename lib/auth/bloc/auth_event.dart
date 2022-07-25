part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List get props => [];
}

class SignIn extends AuthEvent {
  final Map<String, String> credentials;
  const SignIn({required this.credentials}) : super();

  @override
  List get props => [credentials];
}

class SignUp extends AuthEvent {
  final Map<String, String> credentials;
  const SignUp({required this.credentials}) : super();

  @override
  List get props => [credentials];
}

class SignOut extends AuthEvent {}
