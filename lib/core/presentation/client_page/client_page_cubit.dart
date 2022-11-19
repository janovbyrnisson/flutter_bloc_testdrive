import 'package:flutter_bloc/flutter_bloc.dart';

class ClientPageCubit extends Cubit<bool> {
  ClientPageCubit() : super(true);

  bool get isOpened => state;

  void toggleMenu() {
    emit(!state);
  }
}
