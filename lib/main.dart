import 'package:flutter/material.dart';
// import 'dart:math';

import './contact_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch:Colors.blue,
        accentColor:Colors.blueAccent,
        brightness:Brightness.light,
         ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('CloudList'),
        ),
        //tab list here?
        body: ContactManager()
        
      ),
    );
  }
}
