
import 'package:flutter/material.dart';

import '../pages/settingssensor.dart';


 ListTile setter(BuildContext context,String route, icon, String maintext, subtext) {
   print("setter route = "+route);
    return ListTile(
      onLongPress: () {
        print(subtext);
      },
      onTap: () {
        print(maintext);
      },
      leading: IconButton(
          icon: Icon(icon),
          color: Colors.red.shade400,
          onPressed: () {//this should be in the onTap() of the ListTile widget to allow tapping any part of the "tile"
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