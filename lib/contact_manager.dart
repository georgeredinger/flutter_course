import 'package:flutter/material.dart';
import 'dart:math';

import './contacts.dart';
// import './pages/home.dart';
import './models/contact.dart';

List<String> _contactNames = [
  'Winston Smith',
  'Julia ',
  'O’Brien ',
  'Big Brother',
  'Mr. Charrington',
  'Syme Syme',
  'Parsons Fab',
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
    for (var c in _contactNames) {
      String first = c.split(" ")[0];
      String last = c.split(" ")[1];
      _contacts.add(Contact(firstName: first, lastName: last));
    }

    return Column(
      children: [Expanded(child: Contacts(_contacts))],
    );
  }
}
