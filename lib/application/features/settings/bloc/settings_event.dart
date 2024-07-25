part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
const factory SettingsEvent.createConnection() = _createConnection;

const factory SettingsEvent.discontion() = _discontion;


}