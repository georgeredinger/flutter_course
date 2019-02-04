import 'package:flutter/material.dart';

import './sensorsettings.dart';

class SettingsPage extends StatelessWidget {
  ListTile setter(BuildContext context,icon, String maintext, subtext) {
    return ListTile(
      leading: IconButton(icon:Icon(icon), color: Colors.red.shade400,
          onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => Sensor()));
      }),
      trailing: Icon(
        Icons.expand_more,
        color: Colors.blue,
      ),
      title: Text(
        maintext,
        style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtext),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(children: [
        setter(context,Icons.add_circle, "Emergency Contacts", "We hope you are OK"),
        setter(context,Icons.directions_bike, "Cyclists",
            "Find out where they are before you ride"),
        setter(context,Icons.settings_remote, "Sensor", "Feel the motion"),
        setter(context,Icons.security, "Privacy",
            "Not posted to Facebook, but we do keep it, for \"safety\""),
        setter(context,Icons.portrait, "My Info", "Don't worry we won't tell"),
        setter(context,Icons.room_service, "Notificatons",
            "Ya know you want people to notice"),
      ]),
    );
  }
}
