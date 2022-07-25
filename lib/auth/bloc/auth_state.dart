part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final bool? isAuthenticated;
  final bool? isLoading;
  final String? error;
  final Map<String, String>? credentials;

  const AuthState({
    this.isAuthenticated,
    this.isLoading,
    this.error,
    this.credentials,
  });

  AuthState copyWith({
    bool? isAuthenticated,
    bool? isLoading,
    String? error,
    Map<String, String>? credentials,
  }) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      credentials: credentials ?? this.credentials,
    );
  }

  @override
  List get props => [
        isAuthenticated,
        isLoading,
        error,
        credentials,
      ];
}
