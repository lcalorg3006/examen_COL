import 'package:flutter/material.dart';

class MonitorScreen extends StatelessWidget {
  const MonitorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Monitores"),
          actions: const [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: const Text('LC'),
                backgroundColor: Colors.lightGreenAccent,
              ),
            )
          ],
          //backgroundColor: Colors.blueAccent,
          elevation: 0,
        ),
        body: ListView(
        ));
  }
}
