part of 'settings_page_bloc.dart';

@freezed
class SettingsPageState with _$SettingsPageState {
  const factory SettingsPageState.initial({@Default(4) int numberOfCards}) =
      _SettingsInitial;
}
