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
  // print(facestring);
  return facestring;
}

class Contacts extends StatelessWidget {
  final List<String> contacts;

  Contacts(this.contacts) {
    // print('[contact widget] Constructor');
  }

  List bob() {
    var rand = new Random();

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
                  Checkbox(
                      value: rand.nextBool(),
                      onChanged: (bool value) {
                        setState() {/*comment*/}
                      })
                ],
              )),
        )
        .toList();

    print(c.length);

    return c;
  }

  @override
  Widget build(BuildContext context) {
    var b = bob();
    if (b.length == 0) {
      return Text("Better Spindle some");
    } else {
      return ListView(children: b);
    }
  }
}
