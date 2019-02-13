import 'package:flutter/material.dart';

class Contact {
  final String firstName;
  final String lastName;
  final Image image;
  final String uid;
  
  Contact({
    @required this.firstName,
    @required this.lastName,
    this.image,
    this.uid
  });
}
