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

  Contacts(this.contacts);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: contacts
          .map((element) => Card(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      face(),
                      height: 100.0,
                    ),
                    Container(
                        color: Colors.grey[400],
                        height: 100.0,
                        child: Text(element,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            )))
                  ],
                ),
              ))
          .toList(),
    );
  }
}
