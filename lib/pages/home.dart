import 'package:flutter/material.dart';

import '../contact_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CloudList'),
      ),
      body: ContactManager(),
      drawer: SizedBox(
          width: 500,
          child: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the Drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text(""),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/cloudspindle-512-transparent.png')),
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text(
                      'Item 1, a very long item indeed. so long it makes the drawer bigger'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          )),
      persistentFooterButtons: <Widget>[
        Icon(Icons.apps),
        Icon(Icons.more_horiz),
        Icon(Icons.settings),
        Icon(Icons.settings_bluetooth),
        Icon(Icons.settings_applications),
      ],
    );
  }
}
