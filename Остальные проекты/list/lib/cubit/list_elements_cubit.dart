import 'package:bloc/bloc.dart';
import 'package:list/main.dart';
import 'package:meta/meta.dart';

part 'list_elements_state.dart';

class ListElementsCubit extends Cubit<ListElementsState> {
  ListElementsCubit() : super(ListElementsInitial());

    void ElementAdd(){
        list.add("ЫЫЫЫЫЫЫЫ!!!");
        emit(CountedSize());
    }
    void ElementRemoved(int size){
      if (size == 0){
        emit(ListElementsInitial());
      }
      else{
        emit(CountedSize());
      }
    }
}
