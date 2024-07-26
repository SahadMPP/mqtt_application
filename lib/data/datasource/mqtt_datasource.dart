import 'package:application_mqtt/data/model/connection_model.dart';
import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

abstract class MqttDatasource {
  Future<ConnectionModel> initializeMQTT();

  String subcriptionTopic({required String topic});

  void publishing({required String topic, required String message});

  ConnectionModel unsubscrib(
      {required String topic,
      required bool isConnected,
      required bool isSubcribed});
}

class MqttDatasourceImpl extends MqttDatasource {
  MqttServerClient? client;

  @override
  Future<ConnectionModel> initializeMQTT() async {
    // Initialize the ConnectionModel before using it
    ConnectionModel connectionModel =
        ConnectionModel(isConnected: false, isSubcribed: false);

    client = MqttServerClient('broker.mqtt.cool', '');
    client!.port = 1883;
    client!.logging(on: true);

    final connMessage = MqttConnectMessage()
        .withClientIdentifier('client_identifier')
        .startClean()
        .withWillTopic('willtopic')
        .withWillMessage('My Will message')
        .withWillQos(MqttQos.atLeastOnce);

    client!.connectionMessage = connMessage;

    client!.onConnected = () {
      debugPrint('Connected');
    };

    client!.onDisconnected = () {
      connectionModel.isConnected = false;
      connectionModel.isSubcribed = false;
      debugPrint('Disconnected');
    };
    client!.onSubscribed = (String topic) {
      connectionModel.isSubcribed = true;
      debugPrint('Subscribed to topic: $topic');
    };

    try {
      await client!.connect();
      connectionModel.isConnected = true;
    } catch (e) {
      debugPrint('Exception: $e');
      client!.disconnect();
      connectionModel.isConnected = false;
    }

    return connectionModel;
  }

  @override
  void publishing({required String topic, required String message}) {
    final builder = MqttClientPayloadBuilder();
    builder.addString(message);

    client!.publishMessage(topic, MqttQos.exactlyOnce, builder.payload!);
  }

  @override
  String subcriptionTopic({required String topic}) {
    String result = '';
    client!.subscribe(topic, MqttQos.atLeastOnce);
    client!.updates!.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final MqttPublishMessage recMess = c[0].payload as MqttPublishMessage;
      final String pt =
          MqttPublishPayload.bytesToStringAsString(recMess.payload.message);
      result = pt;
    });
    return result;
  }

  @override
  ConnectionModel unsubscrib(
      {required String topic,
      required bool isConnected,
      required bool isSubcribed}) {
    ConnectionModel connectionModel =
        ConnectionModel(isConnected: isConnected, isSubcribed: isSubcribed);
    client!.unsubscribe(topic, expectAcknowledge: true);
    connectionModel.isSubcribed = false;
    return connectionModel;
  }
}
