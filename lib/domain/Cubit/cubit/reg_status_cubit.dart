import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'reg_status_state.dart';

class RegStatusCubit extends Cubit<RegStatusState> {
  RegStatusCubit() : super(RegDisabled());

  void Enable(String firstname, String lastname, String otch, String login, String password){
    if (firstname.isEmpty || lastname.isEmpty || otch.isEmpty || login.isEmpty || password.isEmpty){
      emit(RegDisabled());
    }
    else{
      emit(RegEnabled());
    }
  }
}
