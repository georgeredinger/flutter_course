import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/login.dart';
import './pages/home.dart';
import './pages/settings.dart';
import './pages/settingsprofile.dart';


void main() {
  Map<String,String> userProfile = new Map<String,String>(); 
   userProfile['UserName'] = 'UserName'; 
   userProfile['FirstName'] = 'FirstName'; 
   userProfile['LastName'] = 'LastName'; 
   userProfile['Address'] = 'Address'; 
   userProfile['Gender'] = 'Gender'; 
   
   print(userProfile); 

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
        ),
        home: HomePage(),
        routes: {
          // '/': (BuildContext context ) => HomePage(),
          '/login': (BuildContext context) => Login(),
          '/settings': (BuildContext context) => SettingsPage(),
          '/profile': (BuildContext context) => SettingsProfile(),
        });
  }
}
