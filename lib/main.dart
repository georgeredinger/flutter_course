import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './pages/home.dart';
import './pages/login.dart';
import './pages/settings.dart';
import './pages/settingsprofile.dart';
import './pages/settingssensor.dart';
import './models/contact.dart';

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

class FirebaseReference {
  String name;
}

var fb = FirebaseReference();

Future getFBRefName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  fb.name = prefs.getString('fbRefName') ?? "NotAvailable";
  print("Firebase Ref Name = " + fb.name);
  return "ref";
}

void main() {
  if (isInDebugMode) {
    fb.name = "jampackde";
  }

  getFBRefName();
  Map<String, String> userProfile = new Map<String, String>();
  userProfile['UserName'] = 'UserName';
  userProfile['FirstName'] = 'FirstName';
  userProfile['LastName'] = 'LastName';
  userProfile['Address'] = 'Address';
  userProfile['Gender'] = 'Gender';

  print("debug is " + isInDebugMode.toString());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Contact> _contacts = [];

  void _addContact(Contact contact) {
    setState(() {
      _contacts.add(contact);
    });
  }

void _deleteContact(int index){
  setState((){
    _contacts.removeAt(index);
  });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.blueAccent,
          brightness: Brightness.light,
          buttonColor: Colors.deepOrange,
          fontFamily: 'PT_Sans',
        ),
        home: HomePage(_contacts),
        routes: {
          // '/': (BuildContext context ) => HomePage(),
          '/emergencycontacts': (BuildContext context) => Sensor(),
          '/cyclists': (BuildContext context) => Sensor(),
          '/sensor': (BuildContext context) => Sensor(),
          '/privacy': (BuildContext context) => Sensor(),
          '/profile': (BuildContext context) => SettingsProfile(),
          '/notifications': (BuildContext context) => Sensor(),

          '/login': (BuildContext context) => Login(),
          '/settings': (BuildContext context) => SettingsPage(),
        });
  }
}
