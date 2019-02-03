import "package:flutter/material.dart";

import 'dart:math';
import './pages/settings.dart';

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

class Contacts extends StatelessWidget {
  final List<String> contacts;

  Contacts(this.contacts) {
    // print('[contact widget] Constructor');
  }

  List bob(BuildContext context) {
    var rand = new Random();
    bool isInstructionView = rand.nextBool();

    var c = contacts
        .map(
          (element) => Card(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      face(),
                    ),
                    radius: 50,
                  ),
                  Container(
                    height: 20.0,
                    margin: new EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(element,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                        )),
                  ),
                  Switch(
                      value: rand.nextBool(),
                      onChanged: (bool value) {
                        isInstructionView = !value;
                        print(isInstructionView);
                      }),
                  IconButton(
                    color: (rand.nextBool()) ? Colors.red : Colors.grey,
                    icon: (rand.nextBool())
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border),
                    tooltip: 'Make Emergency contact',
                    onPressed: () {
                      print("Favorite");
                    },
                  ),
                  IconButton(
                    color: (rand.nextBool()) ? Colors.red : Colors.grey,
                    icon: Icon(Icons.contact_mail),
                    tooltip: 'Make Happy contact',
                    onPressed: () {
                      print("Phone");
                    },
                  ),
                  IconButton(
                    color: (rand.nextBool()) ? Colors.red : Colors.grey,
                    icon: Icon(Icons.directions_bike),
                    tooltip: 'Make bike contact',
                    onPressed: () {
                      print("bike");
                    },
                  ),
                  ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'Details',
                          ),
                          onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) => SettingsPage(),
                                ),
                              ),
                        )
                      ])
                ],
              )),
        )
        .toList();

    print(c.length);

    return c;
  }

  @override
  Widget build(BuildContext context) {
    var b = bob(context);
    if (b.length == 0) {
      return Center(
          child: Text(
        "Better Spindle some",
        style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
      ));
    } else {
      return ListView(children: b);
    }
  }
}
