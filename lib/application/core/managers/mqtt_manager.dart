import 'dart:async';

import 'package:application_mqtt/application/core/models/MQTTAppState.dart';
import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class MQTTManager {
  final MQTTAppState _currentState = MQTTAppState();
  MqttServerClient? _client;
  late String _identifier;
  String? _host;
  String _topic = "";

  void initializeMQTTClient({
    required String host,
    required String identifier,
  }) {
    _identifier = identifier;
    _host = host;
    _client = MqttServerClient(_host!, _identifier);
    _client!.port = 1883;
    _client!.keepAlivePeriod = 20;
    _client!.onDisconnected = onDisconnected;
    _client!.secure = false;
    _client!.logging(on: true);

    /// Add the successful connection callback
    _client!.onConnected = onConnected;
    _client!.onSubscribed = onSubscribed;
    _client!.onUnsubscribed = onUnsubscribed;

    final MqttConnectMessage connMess = MqttConnectMessage()
        .withClientIdentifier(_identifier)
        .withWillTopic(
            'willtopic') // If you set this you must set a will message
        .withWillMessage('My Will message')
        .startClean() // Non persistent session for testing
        //.authenticateAs(username, password)// Non persistent session for testing
        .withWillQos(MqttQos.atLeastOnce);
    debugPrint('EXAMPLE::Mosquitto client connecting....');
    _client!.connectionMessage = connMess;
  }

  String? get host => _host;
  MQTTAppState get currentState => _currentState;
  // Connect to the host
  Future<bool> connect() async {
    assert(_client != null);
    try {
      debugPrint('EXAMPLE::Mosquitto start client connecting....');
      _currentState.setAppConnectionState(MQTTAppConnectionState.connecting);

      await _client!.connect();
      return true;
    } on Exception catch (e) {
      debugPrint('EXAMPLE::client exception - $e');
      disconnect();
      return false;
    }
  }

  void disconnect() {
    debugPrint('Disconnected');
    _client!.disconnect();
  }

  void publish(String message) {
    final MqttClientPayloadBuilder builder = MqttClientPayloadBuilder();
    builder.addString(message);
    _client!.publishMessage(_topic, MqttQos.exactlyOnce, builder.payload!);
  }

  /// The subscribed callback
  void onSubscribed(String topic) {
    debugPrint('EXAMPLE::Subscription confirmed for topic $topic');
    _currentState
        .setAppConnectionState(MQTTAppConnectionState.connectedSubscribed);
  }

  void onUnsubscribed(String? topic) {
    debugPrint('EXAMPLE::onUnsubscribed confirmed for topic $topic');
    _currentState.clearText();
    _currentState
        .setAppConnectionState(MQTTAppConnectionState.connectedUnSubscribed);
  }

  /// The unsolicited disconnect callback
  void onDisconnected() {
    debugPrint(
        'EXAMPLE::OnDisconnected client callback - Client disconnection');
    if (_client!.connectionStatus!.returnCode ==
        MqttConnectReturnCode.noneSpecified) {
      debugPrint(
          'EXAMPLE::OnDisconnected callback is solicited, this is correct');
    }
    _currentState.clearText();
    _currentState.setAppConnectionState(MQTTAppConnectionState.disconnected);
  }

  /// The successful connect callback
  void onConnected() {
    _currentState.setAppConnectionState(MQTTAppConnectionState.connected);

    debugPrint('EXAMPLE::Mosquitto client connected....');
    _client!.updates!.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final MqttPublishMessage recMess = c[0].payload as MqttPublishMessage;
      final String pt =
          MqttPublishPayload.bytesToStringAsString(recMess.payload.message);
      _currentState.setReceivedText(pt);

      debugPrint(
          'EXAMPLE::Change notification:: topic is <${c[0].topic}>, payload is <-- $pt -->');
      debugPrint('');
    });
    debugPrint(
        'EXAMPLE::OnConnected client callback - Client connection was sucessful');
  }

  void subScribeTo(String topic) {
    // Save topic for future use
    _topic = topic;
    _client!.subscribe(topic, MqttQos.atLeastOnce);
  }

  /// Unsubscribe from a topic
  void unSubscribe(String topic) {
    _client!.unsubscribe(topic);
  }

  /// Unsubscribe from a topic
  void unSubscribeFromCurrentTopic() {
    _client!.unsubscribe(_topic);
  }
}
