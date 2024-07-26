import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late MqttServerClient client;
  final TextEditingController topicController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final GlobalKey<FormState> formKeyOne = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyTwo = GlobalKey<FormState>();
  bool isConnected = false;
  bool isSubscribed = false;
  List<String> messageList = [];

  @override
  void initState() {
    super.initState();
    connect();
  }

  Future<void> connect() async {
    client = MqttServerClient('broker.mqtt.cool', '');
    client.port = 1883;
    client.logging(on: true);

    client.onConnected = onConnected;
    client.onDisconnected = onDisconnected;
    client.onSubscribed = onSubscribed;

    final connMessage = MqttConnectMessage()
        .withClientIdentifier('client_identifier')
        .startClean()
        .withWillTopic('willtopic')
        .withWillMessage('My Will message')
        .withWillQos(MqttQos.atLeastOnce);

    client.connectionMessage = connMessage;

    try {
      await client.connect();
      setState(() {
        isConnected = true;
      });
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        margin: const EdgeInsets.all(8),
        behavior: SnackBarBehavior.floating,
        content: const Text('Connected to server: broker.mqtt.cool'),
        backgroundColor: Colors.green[500]!,
      ));
    } catch (e) {
      debugPrint('Exception: $e');
      client.disconnect();
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        margin: const EdgeInsets.all(8),
        behavior: SnackBarBehavior.floating,
        content: const Text('Failed to connect to server'),
        backgroundColor: Colors.red[500]!,
      ));
    }
  }

  void onConnected() {
    debugPrint('Connected');
  }

  void onDisconnected() {
    setState(() {
      isConnected = false;
      isSubscribed = false;
    });
    debugPrint('Disconnected');
  }

  void onSubscribed(String topic) {
    setState(() {
      isSubscribed = true;
    });
    debugPrint('Subscribed to topic: $topic');
  }

  void publishMessage() {
    final builder = MqttClientPayloadBuilder();
    builder.addString(messageController.text);
    client.publishMessage(topicController.text, MqttQos.exactlyOnce, builder.payload!);
  }

  void subscribeToTopic() {
    client.subscribe(topicController.text, MqttQos.atLeastOnce);
    client.updates!.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final MqttPublishMessage recMess = c[0].payload as MqttPublishMessage;
      final String pt = MqttPublishPayload.bytesToStringAsString(recMess.payload.message);
      setState(() {
        messageList.add(pt);
      });
    });
  }

  void unsubscribeFromTopic() {
    client.unsubscribe(topicController.text);
    setState(() {
      isSubscribed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isConnected ? Colors.green[100] : Colors.grey[100] ,
        centerTitle: true,
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
            Icon(
              isConnected ? Icons.cloud_done_outlined : Icons.cloud_off,
              color: isConnected ? Colors.green : Colors.grey,
              size: 25,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Form(
              key: formKeyOne,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Field is empty';
                        } else {
                          return null;
                        }
                      },
                      controller: topicController,
                      decoration: const InputDecoration(
                        hintText: "Enter Topic",
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: isSubscribed ? unsubscribeFromTopic : subscribeToTopic,
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(isSubscribed ? Colors.grey[300] : Colors.green[500]),
                      shape: WidgetStatePropertyAll(
                        ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    child: Text(
                      isSubscribed ? "Unsubscribe" : "Subscribe",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Form(
              key: formKeyTwo,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Field is empty';
                        } else {
                          return null;
                        }
                      },
                      controller: messageController,
                      decoration: const InputDecoration(
                        hintText: "The message text to be sent",
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: publishMessage,
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green[500]),
                      shape: WidgetStatePropertyAll(
                        ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Publish',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey[300],
              margin: const EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: messageList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(messageList[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
