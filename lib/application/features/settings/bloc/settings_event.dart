part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
const factory SettingsEvent.createConnection({
  required BuildContext context,
  required String url,
}) = _createConnection;

const factory SettingsEvent.discontion({
    required BuildContext context,
  required String url,
}) = _discontion;


}