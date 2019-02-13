import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math';

import '../contact_manager.dart';
import './settings.dart';
import './settingsprofile.dart';
import '../main.dart';
import '../models/contact.dart';
import '../pages/login.dart';

TextStyle funky() {
  var rid = new Random();
  int id = rid.nextInt(5) + 1;
  // print("id=" + id.toString());
  assert(id >= 1 && id <= 5);
  switch (id) {
    case 1:
      return TextStyle(
        color: Colors.black,
        fontSize: 36.0,
        fontFamily: 'Pacifico',
        decoration: TextDecoration.lineThrough,
      );
      break;
    case 2:
      return TextStyle(
          color: Colors.black, fontSize: 36.0, fontFamily: 'IndieFlower');
      break;
    case 3:
      return TextStyle(
          color: Colors.black, fontSize: 36.0, fontFamily: 'MajorMonoDisplay');
      break;
    case 4:
      return TextStyle(
          color: Colors.black, fontSize: 36.0, fontFamily: 'PT_Sans');
      break;
    case 5:
      return TextStyle(color: Colors.black, fontSize: 36.0, fontFamily: 'ZCOO');
      break;
  }
  return TextStyle(color: Colors.black, fontSize: 36.0, fontFamily: 'Pacifico');
}

void _onChangedFBreferenceName(String value) => (() {
      fb.name = value;
      print(fb.name);
    });

class HomePage extends StatelessWidget {
  HomePage();

  Widget _appBar() {
    return AppBar(
        title: Text('CloudList'),
        bottom: TabBar(tabs: <Widget>[
          Tab(icon: Icon(Icons.settings), text: "dogum"),
          Tab(icon: Icon(Icons.notifications), text: "smegum"),
          Tab(icon: Icon(Icons.settings_bluetooth), text: "skookum"),
          Tab(icon: Icon(Icons.attach_money), text: "Choocher"),
        ]));
  }

  Widget _bottomBar(BuildContext context) {
    var tab = Tab(
        icon: IconButton(
            // icon: Icon(Icons.lock, color: Colors.purple),
            icon: Icon(Icons.lock_open, color: Colors.purple),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            }));
    return TabBar(
      tabs: <Widget>[
        Tab(
            //set firebase reference name
            icon: IconButton(
                icon: Icon(Icons.fiber_new, color: Colors.orange, size: 35.0),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Center(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Firebase Reference Name",
                                  style: funky(),
                                ),
                                Container(
                                  margin: EdgeInsets.all(20.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        labelText: fb.name,
                                        icon: Icon(Icons.info)),
                                    style: funky(),
                                    onChanged: (text) {
                                      fb.name = text;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: FlatButton(
                                      child: Text(
                                        "Roasted",
                                        style: funky(),
                                      ),
                                      color: Colors.deepOrangeAccent,
                                      onPressed: () async {
                                        print("Firebase Reference Name = " +
                                            fb.name);
                                        SharedPreferences prefs =
                                            await SharedPreferences
                                                .getInstance();
                                        prefs.setString('fbRefName', fb.name);
                                        //do the dave thing
                                      }),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                })),
        Tab(
          icon: IconButton(
              icon: Icon(Icons.settings, color: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              }),
        ),
        tab,
        Tab(
            icon: IconButton(
                icon: Icon(Icons.person, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              SettingsProfile()));
                })),
      ],
    );
  }

  Widget _rightDrawer(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Transform.rotate(
          angle: 3.14,
          child: DrawerHeader(
            child: Text(
                "consectetur adipiscing elit, sed do eiusmod tempor incididunt"),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  alignment: FractionalOffset.bottomCenter,
                  image: AssetImage('assets/cloudspindle-512-transparent.png')),
              color: Colors.blue,
            ),
          ),
        ),
        Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
      ]),
    );
  }

  Widget _leftDrawer(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
        width: width * 0.75,
        child: Drawer(
          child: ListView(
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
        ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: _appBar(),
          // body: ContactManager(),
          body: Login(),

          endDrawer: _rightDrawer(context),
          drawer: _leftDrawer(context),
          bottomNavigationBar: _bottomBar(context),
        ));
  }
}
