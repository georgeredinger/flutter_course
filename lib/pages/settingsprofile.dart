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

class SettingsProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<SettingsProfile> {
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
          title: Text('Profile Settings'),
        ),
        body: ListView(children: <Widget>[
          // Container(
          //   margin: EdgeInsets.only(top: 10.0),
          //   child: CircleAvatar(
          //     backgroundImage: AssetImage(face()),
          //     radius: 50,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                width: 100.0,
                height: 100.0,
                alignment: Alignment(-1, 1),
                child: CircleAvatar(
                  backgroundImage: AssetImage(face()),
                  // child:Image.asset(face()),
                  radius: 60,
                )),
          ),
          TextFormField(
              decoration: InputDecoration(
            labelText: 'User name',
            icon: Icon(Icons.info),
            hintText: "User name",
          )),
          TextFormField(
              decoration: InputDecoration(
            labelText: 'First name',
            icon: Icon(Icons.info),
            hintText: "Last name",
          )),
          TextFormField(
              decoration: InputDecoration(
            labelText: 'Last name',
            icon: Icon(Icons.info),
            hintText: "Last name",
          )),
          Divider(),
          TextFormField(
              decoration: InputDecoration(
            labelText: 'More Crap',
            icon: Icon(Icons.info),
            hintText: "Send Stuff",
          )),
          TextFormField(
              decoration: InputDecoration(
            labelText: 'Don\'t Tell',
            icon: Icon(Icons.info),
            hintText: "Undefined",
          )),
        ]),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            child: Icon(Icons.add,size: 36.0),
            materialTapTargetSize: MaterialTapTargetSize.padded,
            backgroundColor: Colors.green,
            onPressed: () {}));
  }
}