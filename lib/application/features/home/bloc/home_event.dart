part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.subscribe({
    required String topic,
  }) = _subscribe;
  const factory HomeEvent.publish({
    required String massage,
    required String topic,
  }) = _publish;
   
   const factory HomeEvent.getCurrentAppConnectionStatus({
    required bool isconnected,
   }) = _getCurrentAppStatus;

   const factory HomeEvent.initialMQTTserver({
    required BuildContext context,
   }) = _initialMQTTserver;
   
   const factory HomeEvent.unsubscribe({
    required bool isconnected,
    required bool isSubcribed,
    required String topic, 
   }) = _unsubscribe;
   
}