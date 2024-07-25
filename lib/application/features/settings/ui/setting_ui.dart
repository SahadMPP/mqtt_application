import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("MQTT"),
            SizedBox(width: 10),
            Icon(
              Icons.cloud_off,
              color: Colors.grey,
              size: 25,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(hintText: 'Enter address'),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.green[500]!),
                          shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                            
                              borderRadius: BorderRadius.circular(8)))),
                      child: const Text('Connect',style: TextStyle(
                      color: Colors.white
                      ),),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.red[500]!),
                          shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(8)))),
                      child: const Text('Disconnnect',style: TextStyle(
                        color: Colors.white
                      ),),
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
}
