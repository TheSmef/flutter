import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_status_state.dart';

class AuthStatusCubit extends Cubit<AuthStatusState> {
  AuthStatusCubit() : super(AuthDisabled());

  void EnableAuth(String login, String password){
      if (login.isEmpty || password.isEmpty){
          emit(AuthDisabled());
      }
      else{
          emit(AuthEnabled());
      }
  }
}
