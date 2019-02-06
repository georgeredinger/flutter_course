import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

String face() {
  var rid = new Random();
  var id = rid.nextInt(14);
  var key = (id % 14);
  var facestring = "faceless";
  if (key < 10) {
    facestring = 'assets/face' + '0' + key.toString() + '.jpeg';
  } else {
    facestring = 'assets/face' + key.toString() + '.jpeg';
  }
  // print(facestring);
  return facestring;
}

bool _value1 = false;
bool _value2 =
    false; //how come these vars canot be declared in _SensorState class?
bool _value3 = false;

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  void _onChanged1(bool value) => setState(() {
        _value1 = value;
      });

  void _onChanged2(bool value) => setState(() {
        _value2 = value;
      });

  void _onChanged3(bool value) => setState(() {
        _value3 = value;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log me in Capitan'),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoButton(
              color: Colors.orange,
              borderRadius: new BorderRadius.circular(30.0),
              child: Text("CupertinoButton"),
              onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlatButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              color: Colors.teal,
              child: Text("FLAT BUTTON",style:  TextStyle(fontSize: 18.0, color: Colors.white))),
        )
      ]),
    );
  }
}
