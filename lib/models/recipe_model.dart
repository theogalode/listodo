import 'package:flutter/material.dart';

@immutable
class Recipe {
  const Recipe({
    required this.name,
  });

  final name;

  @override
  String toString() {
    return "Recipe: [name: " + name + "],";
  }

  
}