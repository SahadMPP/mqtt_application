part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required List<String> massageList,
      required bool isSubcribed,
      required bool isconnected,
      MqttServerClient? client}) = _HomeState;

  factory HomeState.initial() {
    return  HomeState(
        massageList: [], isSubcribed: false, isconnected: false,client: MqttServerClient('broker.mqtt.cool', ''));
  }
}
