import 'package:flutter/material.dart';

import '../contact_manager.dart';
import './settings.dart';
import './settingsprofile.dart';
import './login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var tab = Tab(
        icon: IconButton(
            // icon: Icon(Icons.lock, color: Colors.purple),
            icon: Icon(Icons.lock_open, color: Colors.purple),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            }));
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: Text('CloudList'),
              bottom: TabBar(tabs: <Widget>[
                Tab(icon: Icon(Icons.settings), text: "dogum"),
                Tab(icon: Icon(Icons.notifications), text: "smegum"),
                Tab(icon: Icon(Icons.settings_bluetooth), text: "skookum"),
                Tab(icon: Icon(Icons.attach_money), text: "Choocher"),
              ])),
          body: ContactManager(),
          endDrawer: Drawer(
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
                        image: AssetImage(
                            'assets/cloudspindle-512-transparent.png')),
                    color: Colors.blue,
                  ),
                ),
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            ]),
          ),
          drawer: SizedBox(
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
              )),
          bottomNavigationBar: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home, color: Colors.black)),
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
          ),
        ));
  }
}
