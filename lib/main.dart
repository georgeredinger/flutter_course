import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './pages/home.dart';
import './pages/login.dart';
import './pages/settings.dart';
import './pages/settingsprofile.dart';
import './pages/settingssensor.dart';

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}


class FirebaseReference{
  String name;

}

var fb = FirebaseReference();

Future getFBRefName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // print(prefs.setString('fbRefName', "ForwardTheFuture"));
  
  fb.name = prefs.getString('fbRefName') ?? "NotAvailable";
  
  print("Firebase Ref Name = " + fb.name );

  return "ref";
}

void main() {
  // String firebaseRefName = "LightMyFirebase";


  if (isInDebugMode) {
     fb.name  = "jampackde";
  }

  getFBRefName();
  Map<String, String> userProfile = new Map<String, String>();
  userProfile['UserName'] = 'UserName';
  userProfile['FirstName'] = 'FirstName';
  userProfile['LastName'] = 'LastName';
  userProfile['Address'] = 'Address';
  userProfile['Gender'] = 'Gender';

  print(userProfile);
  print("debug is " + isInDebugMode.toString());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.blueAccent,
          brightness: Brightness.light,
          fontFamily: 'PT_Sans',
        ),
        home: HomePage(),
        routes: {
          // '/': (BuildContext context ) => HomePage(),
          '/login': (BuildContext context) => Login(),
          '/settings': (BuildContext context) => SettingsPage(),
          '/profile': (BuildContext context) => SettingsProfile(),
          '/sensor': (BuildContext context) => Sensor(),
        });
  }
}
