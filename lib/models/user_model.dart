import 'package:flutter/material.dart';

class User {
  final String firstname;
  final String lastname;
  final String picture;

  const User({
    @required this.firstname,
    @required this.lastname,
    @required this.picture,
  });
}
