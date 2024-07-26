// ignore: depend_on_referenced_packages
import 'package:application_mqtt/domain/usecase/mqtt_usecase.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<_initialMQTTserver>((event, emit) async {
      MqttUsecase().initializeMQTTserver();
    });

    on<_publish>((event, emit) {
      MqttUsecase().publishing(topic: event.topic, message: event.massage);
    });

    on<_subscribe>((event, emit) {
      MqttUsecase().subcriptionForTopic(topic: event.topic);
    });

    on<_unsubscribe>((event, emit) {
      MqttUsecase().unsubscribeFromTopic(
          topic: event.topic,
          isConnected: event.isconnected,
          isSubcribed: event.isSubcribed);
    });
  }
}
