import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_page_bloc.freezed.dart';
part 'settings_page_event.dart';
part 'settings_page_state.dart';

class SettingsPageBloc extends Bloc<SettingsPageEvent, SettingsPageState> {
  SettingsPageBloc() : super(const _SettingsInitial()) {
    on<SettingsPageEvent>((event, emit) {
      emit(state.copyWith(numberOfCards: event.numOfCards));
    });
  }
}
