import 'package:flutter/material.dart';
// import 'dart:math';

import './contact_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CloudList'),
        ),
        body: ContactManager('Emergency Contacts'),
      ),
    );
  }
}
