import 'package:flutter/material.dart';

class ProjectProperties {
  static final ProjectProperties _projectProperties = ProjectProperties._();

  factory ProjectProperties() {
    return _projectProperties;
  }

  ProjectProperties._();

  static const noShadow = BoxShadow(
    color: Colors.transparent,
    offset: const Offset(0, 0),
    blurRadius: 0,
    spreadRadius: 0,
  );

  static const boxShadow1 = BoxShadow(
    color: Colors.black54,
    offset: const Offset(1, 3),
    blurRadius: 3,
    spreadRadius: -3,
  );

  static const boxShadow2 = BoxShadow(
    color: Colors.black54,
    offset: const Offset(1, 3),
    blurRadius: 6,
    spreadRadius: 1,
  );
}
