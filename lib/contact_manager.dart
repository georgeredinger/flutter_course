import 'package:flutter/material.dart';
import 'dart:math';

import './contacts.dart';

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
  print(contactstring);
  return contactstring;
}

class ContactManager extends StatefulWidget {
  final String startingContact;

  ContactManager({this.startingContact = "Crash Tester"}) {
    print('[contactmanager widget]  constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[contactmanager widget]  create state');

    return _ContactManagerState();
  }
}

class _ContactManagerState extends State<ContactManager> {
  List<String> _contacts = [];

  @override
  void initState() {
        print('[contactmanager state]  init state');

    super.initState();
    _contacts.add(widget.startingContact);
  }

@override void didUpdateWidget(ContactManager oldWidget){
          print('[contactmanager ]  didUpdateWidget()');

  super.didUpdateWidget(oldWidget);
}

  @override
  Widget build(BuildContext context) {
            print('[contactmanager Widget]  Build()');

    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color:Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _contacts.add(contactor());
              });
            },
            child: Text('Spindle it',
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.deepPurpleAccent,
                )),
          ),
        ),
        Contacts(_contacts)
      ],
    );
  }
}
