part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool isconnected,
  }) = _SettingsState;

  factory SettingsState.initial(){
    return const SettingsState(isconnected: false);
  }
}
