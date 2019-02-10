import 'package:flutter/material.dart';

import '../widgets/setting.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(0, 255, 0, 0.25),
            image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(.25), BlendMode.dstATop),
              image: AssetImage("assets/hitchcock_profile.jpg"),
            )),
        child: ListView(children: [
          setter(
              context,
              '/settings',
              Icons.add_circle,
              "Emergency Contacts", //Emergency()
              "We hope you are OK"),
          setter(context, '/settings', Icons.directions_bike, "Cyclists",
              "Find out where they are before you ride"),
          setter(context, '/sensor', Icons.settings_remote, "Sensor",
              "Feel the motion"), //Sensor()
          setter(context, '/settings', Icons.visibility_off, "Privacy",
              "Not posted to Facebook, but we do keep it, for \"safety\""),
          setter(context, '/profile', Icons.portrait, "My Info",
              "Don't worry we won't tell"),
          setter(context, '/settings', Icons.notifications, "Notificatons",
              "Ya know you want people to notice"),
        ]),
      ),
    );
  }
}
