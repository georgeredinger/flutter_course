import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

import './contact_manager.dart';

void main() {
// debugPaintPointersEnabled = 
    // debugPaintBaselinesEnabled = 
    // debugPaintLayerBordersEnabled = 
    // debugRepaintRainbowEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
        brightness: Brightness.light,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('CloudList'),
          ),
          //tab list here?
          body: ContactManager()),
    );
  }
}
