import 'package:application_mqtt/application/features/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController controller = TextEditingController();
  MqttServerClient? _client;
  MQTTAppState currentState = MQTTAppState();
  bool isconnected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "MQTT",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
            BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, state) {
                return Icon(
                  isconnected ? Icons.cloud_done_outlined : Icons.cloud_off,
                  color: isconnected ? Colors.green : Colors.grey,
                  size: 25,
                );
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(hintText: 'Enter address'),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        _client =
                            MqttServerClient(controller.text, "_identifier");

                        // Initialize client parameters
                        _client!.port = 1883;
                        _client!.keepAlivePeriod = 20;
                        _client!.onDisconnected = onDisconnected;
                        _client!.secure = false;
                        _client!.logging(on: true);

                        final MqttConnectMessage connMess = MqttConnectMessage()
                            .withClientIdentifier("_identifier")
                            .withWillTopic(
                                'willtopic') // If you set this you must set a will message
                            .withWillMessage('My Will message')
                            .startClean() // Non persistent session for testing
                            .withWillQos(MqttQos.atLeastOnce);
                        _client!.connectionMessage = connMess;

                        try {
                          print(
                              'EXAMPLE::Mosquitto start client connecting....');
                          currentState.setAppConnectionState(
                              MQTTAppConnectionState.connecting);

                          await _client!.connect().then(
                            (status) {
                              print(status!.state);
                              if (status.state.toString() ==
                                    'MqttConnectionState.connected') {
                                setState(() {
                                  isconnected = true;
                                });
                              }
                            },
                          );
                        } on Exception catch (e) {
                          print('EXAMPLE::client exception -> $e');
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.green[500]),
                        shape: WidgetStateProperty.all(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Connect',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // context.read<SettingsBloc>().add(
                        //     SettingsEvent.discontion(
                        //         context: context, url: controller.text));
                        _client!.disconnect();
                        setState(() {
                          isconnected = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.red[500]),
                        shape: WidgetStateProperty.all(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Disconnect',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void onDisconnected() {
    print("disconnected");
  }
}

enum MQTTAppConnectionState {
  connected,
  disconnected,
  connecting,
  connectedSubscribed,
  connectedUnSubscribed
}

class MQTTAppState {
  MQTTAppConnectionState _appConnectionState =
      MQTTAppConnectionState.disconnected;
  String _receivedText = '';
  String _historyText = '';

  void setReceivedText(String text) {
    _receivedText = text;
    _historyText = _historyText + '\n' + _receivedText;
  }

  void setAppConnectionState(MQTTAppConnectionState state) {
    _appConnectionState = state;
  }

  void clearText() {
    _historyText = "";
    _receivedText = "";
  }

  String get getReceivedText => _receivedText;
  String get getHistoryText => _historyText;
  MQTTAppConnectionState get getAppConnectionState => _appConnectionState;
}
