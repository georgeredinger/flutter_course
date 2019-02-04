import 'package:flutter/material.dart';

bool _value1 = false;
bool _value2 = false;

class Sensor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SensorState();
  }
}

class _SensorState extends State<Sensor> {
  void _onChanged1(bool value) => setState(() {
        _value1 = value;
      });

  void _onChanged2(bool value) => setState(() {
        _value2 = value;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sensor Settings'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Chunk"),
              Switch(value: _value1, onChanged: _onChanged1),
            ]),
        Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text( "Funk",style: TextStyle(fontSize: 30.0),),
                  Switch(value: _value2, onChanged: _onChanged2),
                ])),
      ]),
    );
  }
}
