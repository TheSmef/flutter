import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:statemanager/main.dart';

part 'click_state.dart';

class ClickCubit extends Cubit<ClickState> {
  ClickCubit() : super(WhiteTheme());

  int count = 0;

  void Click() {
    if (state is WhiteTheme){
      count++;
      list.add("$count Количество нажатий. Светлая тема");
      emit(WhiteTheme());
    }
    else{
      count = count + 2;
      list.add("$count Количество нажатий. Тёмная тема");
      emit(BlackTheme());
    }

  }

  void ClickMinus() {
    if (state is WhiteTheme){
      count--;
      list.add("$count Количество нажатий. Светлая тема");
      emit(WhiteTheme());
    }
    else{
      count = count - 2;
      list.add("$count Количество нажатий. Тёмная тема");
      emit(BlackTheme());
    }
  }
  
  void SwapThere(){
    if (state is WhiteTheme){
      list.add("Тема изменена на тёмную, количество нажатий - $count");
      emit(BlackTheme());
    }
    else{
      list.add("Тема изменена на светлую, количество нажатий - $count");
      emit(WhiteTheme());
    }
  }


}
