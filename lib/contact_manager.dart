import 'package:flutter/material.dart';
import 'dart:math';
import 'package:scoped_model/scoped_model.dart';

import './contacts.dart';
// import './pages/home.dart';
import './models/contact.dart';

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

List<String> _contactNames = [
  'Winston Smith',
  'Julia',
  'O’Brien ',
  'Big Brother',
  'Mr. Charrington',
  'Parsons',
  'Emmanuel Goldstein',
  'Old Major',
  'Mr. Pilkington'
      'Syme',
];

String contactor() {
  var rid = new Random();
  var id = rid.nextInt(9);
  var key = (id % 9);
  var contactstring = _contactNames[key];
  // print(contactstring);
  return contactstring;
}

class ContactManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContactManagerState();
  }
}

class _ContactManagerState extends State<ContactManager> {
  List<Contact> _contacts = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(ContactManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    _contacts.removeRange(0, _contacts.length);
    int i = 0;
    for (var c in _contactNames) {
      List<String> splits = c.split(" ");

      String first = c.split(" ")[0];
      String last = "last";
      if (splits.length >= 2) {
        last = c.split(" ")[1];
      }
      i++;
      _contacts
          .add(Contact(firstName: first, lastName: last, uid: i.toString()));
    }

    return Column(
      children: [Expanded(child: Contacts(_contacts))],
    );
  }
}
