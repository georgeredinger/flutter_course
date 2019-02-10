import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

import './home.dart';

String face() {
  var rid = new Random();
  var id = rid.nextInt(14);
  var key = (id % 14);
  var facestring = "faceless";
  if (key < 10) {
    facestring = 'assets/face' + '0' + key.toString() + '.jpeg';
  } else {
    facestring = 'assets/face' + key.toString() + '.jpeg';
  }
  // print(facestring);
  return facestring;
}

class SettingsProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<SettingsProfile> {
  Map<String, String> _profile = {
    'userName': "",
    'firstName': "",
    'lastName': "",
    'location': "",
    'gender': "",
  };

  void _submitForm() {
    if (!_formKey.currentState.validate()) {
      return; // don't save if validation fails
    }

    _formKey.currentState.save();
    final Map<String, String> profile = _profile;
    print("profile is " + profile.toString());
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _fField(String label, String result) {
    return TextFormField(
        decoration: InputDecoration(labelText: label, icon: Icon(Icons.info)),
        initialValue: _profile[result], //load this from DB and logged in user
        validator: (String value) {
          switch (result) {
            case 'userName':
              break;
            case 'firstName':
              break;
            case 'lastName':
              if (value == 'Devnani') {
                return "Who do you think you are?";
              }
              break;
            case 'location':
              break;
            case 'gender':
              if (value != 'Flex') {
                return 'no gender posers allowed';
              }
              break;
          }
        },
        onSaved: (String value) {
          _profile[result] = value;
        });
  }

  Widget _face() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          width: 100.0,
          height: 100.0,
          alignment: Alignment(-1, 1),
          child: CircleAvatar(
            backgroundImage:
                AssetImage(face()), //load face image from backend user info
            radius: 50,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(
            FocusNode()); //remove keyboard when taping out of TextFormFields
      },
      child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          appBar: AppBar(
            title: Text('Profile Settings'),
          ),
          body: Container(
            margin: EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: ListView(children: <Widget>[
                _face(),
                _fField("user name", "userName"),
                _fField("first name", "firstName"),
                _fField("last name", "lastName"),
                Container(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(color: Colors.black, height: 13.0)),
                _fField("location", "location"),
                _fField("gender", "gender"),
              ]),
            ),
          ),
          floatingActionButton: FloatingActionButton(
              tooltip: "do it!",
              elevation: 0.0,
              child: Icon(Icons.add, size: 36.0),
              materialTapTargetSize: MaterialTapTargetSize.padded,
              backgroundColor: Colors.green,
              onPressed: () {
                _submitForm();
              })),
    );
  }
}
