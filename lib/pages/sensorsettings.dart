import 'package:flutter/material.dart';

class Sensor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SensorState();
  }
}

class _SensorState extends State <Sensor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sensor Settings'),
      ),
      body: ListView(children: [
        Text("yunk"),
        Text("yunk"),
        Text("yunk"),
        Text("yunk"),
        Text("yunk"),
      ]),
    );
  }
}
