import 'package:flutter/material.dart';

bool _e1 = false;
bool _e2 = false;
bool _e3 = false;


class Emergency extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EmergencyState();
  }
}

class _EmergencyState extends State<Emergency> {
  
  void _onChanged1(bool value) => setState(() {
        _e1 = value;
      });

  void _onChanged2(bool value) => setState(() {
        _e2 = value;
      });

  void _onChanged3(bool value) => setState(() {
        _e3 = value;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Emergency Settings'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("blay"),
          Text("de bla bla"),
        ]));
  }
}
