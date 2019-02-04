import "package:flutter/material.dart";

import 'dart:math';
// import './pages/settings.dart';

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

  Widget contactImage() {
    return CircleAvatar(
      backgroundImage: AssetImage(
        face(),
      ),
      radius: 50,
    );
  }

  Widget contactName(String element) {
    return Container(
      height: 20.0,
      margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Text(element,
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.black,
          )),
    );
  }

  Widget contactEmergency() {
    var rand = new Random();

    return IconButton(
      color: (rand.nextBool()) ? Colors.red : Colors.grey,
      icon: (rand.nextBool())
          ? Icon(Icons.add_circle)
          : Icon(Icons.add_circle_outline),
      tooltip: 'Make Emergency contact',
      onPressed: () {
        print("Emergency");
      },
    );
  }

  Widget contactLetFollow() {
    var rand = new Random();

    return IconButton(
      color: (rand.nextBool()) ? Colors.red : Colors.grey,
      icon: Icon(Icons.contact_mail),
      tooltip: 'Make Socal contact',
      onPressed: () {
        print("happy");
      },
    );
  }

  List<Widget> contactStuff(String element) {
    return [
      contactImage(),
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            contactName(element),
            Row(children: [contactLetFollow(), contactEmergency()])
          ])
    ];
  }

  List bob(BuildContext context) {
    var c = contacts
        .map(
          (element) => Card(
                  child: Row(
                children: contactStuff(element),
              )),
        )
        .toList();
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
