abstract class AuthState {}

class AuthInitialState extends AuthState {}
class AuthCreatedState extends AuthState {}

class AuthLoadedState extends AuthState {}

class AuthSuccessState extends AuthState {
  final String name;

  AuthSuccessState({required this.name});
}

class AuthFailureState extends AuthState {
  final String errorMessage;

  AuthFailureState(this.errorMessage);
}
