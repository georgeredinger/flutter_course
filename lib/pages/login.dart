import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

import './home.dart';

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
        title: Text('Log me in El Capitan'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter:ColorFilter.mode(Colors.black.withOpacity(.5),BlendMode.dstATop),
          image: AssetImage('assets/bs.jpeg'),
        )),
        child: Center(
          child: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                  color: Colors.orange,
                  borderRadius: new BorderRadius.circular(30.0),
                  child: Text("CupertinoButton"),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Center(
                            child: Text(
                                "R U N, get out now,She's Gonna Blow, Get to the Chopper",
                                style: TextStyle(
                                    fontSize: 32.0, color: Colors.black)),
                          );
                        });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              title: Text("Be scared"),
                              content: Text("If they bite, you become one"),
                              actions: <Widget>[
                                FlatButton(
                                    child: Text("roasted",
                                        style: TextStyle(color: Colors.white)),
                                    color: Colors.red,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    }),
                                FlatButton(
                                    child: Text("fried",
                                        style: TextStyle(color: Colors.black)),
                                    color: Colors.green,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    }),
                                FlatButton(
                                    child: Text("boiled",
                                        style: TextStyle(color: Colors.yellow)),
                                    color: Colors.blue,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    })
                              ]);
                        });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.teal,
                  child: Text("FLAT BUTTON",
                      style: TextStyle(fontSize: 18.0, color: Colors.white))),
            ),
            Center(child: Text("Facebook", style: funky())),
            Center(child: Text('Google', style: funky()))
          ]),
        ),
      ),
    );
  }
}
