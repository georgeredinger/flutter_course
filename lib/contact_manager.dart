import 'package:flutter/material.dart';
import 'dart:math';

import './contacts.dart';
import './pages/home.dart';

List<String> _contactNames = [
  'Winston Smith',
  'Julia ',
  'O’Brien ',
  'Big Brother',
  'Mr. Charrington',
  'Syme',
  'Parsons',
  'Emmanuel Goldstein',
  'Old Major',
  'Mr. Pilkington'
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
  List<String> _contacts = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(ContactManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  _deleteContact(String name) {
    _contacts.removeAt(0);
  }

  @override
  Widget build(BuildContext context) {
    double opa = Random().nextDouble() % 1.0;
    double rad = Random().nextDouble() * 30.0;
    Color clr = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0);

    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: clr, width: 3.0),
                borderRadius: BorderRadius.circular(rad),
                boxShadow: [
                  BoxShadow(
                    color: clr,
                    offset: Offset(10.0, 6.0),
                    blurRadius: (Random().nextDouble() * 10),
                  ),
                ]),
            child: RaisedButton(
              color: clr.withOpacity(opa),
              onPressed: () {
                setState(() {
                  _contacts.add(contactor());
                });
              },
              child: Text(
                'Spindle it',
                style: funky(),
              ),
            ),
          ),
        ),
        Expanded(child: Contacts(_contacts))
      ],
    );
  }
}
