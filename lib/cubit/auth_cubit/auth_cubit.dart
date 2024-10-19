import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/cubit/auth_cubit/auth_state.dart';
import 'package:fruit_app/services/auth_database.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthDatabase authDatabase = AuthDatabase.instance;

  AuthCubit() : super(AuthInitialState());

  void createDatabase() async {
    await authDatabase.database;
    emit(AuthCreatedState());
  }

  void getName(String name) async {
    try {
      name = await authDatabase.insertUser(name);
      emit(AuthSuccessState(name: name));
    } catch (error) {
      emit(AuthFailureState('error'));
    }
  }
}
