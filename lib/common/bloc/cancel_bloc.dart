import 'package:flutter_bloc/flutter_bloc.dart';

class CancelBloc extends Cubit<bool> {
  CancelBloc() : super(true);

  // void trueState() {
  //   cancelBtn = true;
  //   emit(state);
  // }

  // void falseState() {
  //   cancelBtn = false;
  //   emit(!state);
  // }

  toogleBtn() {
    emit(!state);
  }
}
