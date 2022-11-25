import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'click_state.dart';

class ClickCubit extends Cubit<ClickState> {
  ClickCubit() : super(WhiteTheme());

  int count = 0;

  void Click() {
    if (state is WhiteTheme){
      count++;
      emit(WhiteTheme());
    }
    else{
      count = count + 2;
      emit(BlackTheme());
    }

  }

  void ClickMinus() {
    if (state is WhiteTheme){
      count--;
      emit(WhiteTheme());
    }
    else{
      count = count - 2;
      emit(BlackTheme());
    }
  }
  
  void SwapThere(){
    if (state is WhiteTheme){
      emit(BlackTheme());
    }
    else{
      emit(WhiteTheme());
    }
  }


}
