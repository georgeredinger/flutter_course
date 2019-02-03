import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  ListTile setter(icon, String maintext,subtext) {
    return ListTile(
      leading: Icon(icon,color: Colors.red.shade400,size:40.0),
      title: Text(
        maintext,
        style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtext),
    );

    // Row(children: <Widget>[
    //   Expanded(
    //     child: FittedBox(
    //       fit: BoxFit.contain,
    //       child: IconButton(
    //         color: Colors.red,
    //         icon: Icon(icon),
    //         tooltip: text,
    //         onPressed: () {
    //           print(text);
    //         },
    //       ),
    //     ),
    //   ),
    //   Expanded(
    //       child: Text(text,
    //           // textAlign: TextAlign.center,
    //           style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)))
    // ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(children: [
        setter(Icons.add_circle, "Emergency Contacts","We hope you are OK"),
        setter(Icons.directions_bike, "Cyclists","Find out where they are before you ride"),
        setter(Icons.settings_remote, "Sensor","Feel the motion"),
        setter(Icons.security, "Privacy","Not posted to Facebook, but we do keep it, for \"safety\""),
        setter(Icons.portrait, "My Info","Don't worry we won't tell"),
        setter(Icons.room_service, "Notificatons","Ya know you want people to notice"),
      ]),
    );
  }
}
