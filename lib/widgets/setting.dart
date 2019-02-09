import 'package:flutter/material.dart';

ListTile setter(
    BuildContext context, String route, icon, String maintext, subtext) {
  return ListTile(
    onLongPress: () {
      print(subtext);
    },
    onTap: () {
      print(maintext);
      Navigator.pushNamed(context, route);
    },
    leading: IconButton(
        icon: Icon(icon),
        color: Colors.red.shade400,
        onPressed: () {
          //this should be in the onTap() of the ListTile widget to allow tapping any part of the "tile"
          Navigator.pushNamed(context, route);
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
