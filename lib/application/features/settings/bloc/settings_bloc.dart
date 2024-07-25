import 'package:application_mqtt/application/core/managers/mqtt_manager.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:mqtt_client/mqtt_server_client.dart' as mqtt_server;

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState.initial()) {
    on<_createConnection>((event, emit) async {
      // MQTTAppState currentState = MQTTAppState();
    final bool done = await MQTTManager().connect(); 
     if(done)emit(state.copyWith(isconnected: true));
    });

    on<_discontion>((event, emit) {
    
    });
  }
}
