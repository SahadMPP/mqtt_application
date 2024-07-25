import 'package:application_mqtt/application/features/settings/ui/setting_ui.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> massageList= ['massage','Hiiiii'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingPage(),
                ));
              },
              icon: const Icon(Icons.settings),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
      children: [
        const Expanded(
            child: TextField(
          decoration: InputDecoration(hintText: "Enter Topic"),
        )),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: (){},
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.green[500]),
              shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(8)))),
          child: const Text("Subscribe",style: TextStyle(color: Colors.white),),
        ),
      ],
    ),
    Row(
      children: [
        const Expanded(
            child: TextField(
          decoration: InputDecoration(hintText: "The massage text to be sent"),
        )),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: (){},
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.green[500]),
              shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(8)))),
          child: const Text('Publish',style: TextStyle(color: Colors.white),),
        ),
      ],
    ),
   
            const SizedBox(height: 30),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey[300],
              margin: const EdgeInsets.all(8),
              child: ListView.builder(itemCount: massageList.length,itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Text(massageList[index]),
              ),),
            )
          ],
        ),
      ),
    );
  }
}

