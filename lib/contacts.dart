import "package:flutter/material.dart";

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
  print(facestring);
  return facestring;
}

class Contacts extends StatelessWidget {
  final List<String> contacts;

  Contacts(this.contacts) {
    print('[contact widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[contact widget] Build()');

    return Column(
      children: contacts
          .map((element) => Card(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        face(),
                      ),
                      radius: 100,
                    ),
                    Container(
                        height: 100.0,
                        margin: new EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 50.0),
                        constraints: BoxConstraints(
                            maxHeight: 200.0,
                            maxWidth: 900.0,
                            minWidth: 70.0,
                            minHeight: 150.0),
                        child: Text(element,
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.black,
                            )))
                  ],
                ),
              ))
          .toList(),
    );
  }
}
