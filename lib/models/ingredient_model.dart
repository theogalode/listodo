import 'package:flutter/material.dart';

import 'package:listodo/models/tag_model.dart';

class Ingredient {
  final String name;
  final List<Tag> tags;

  const Ingredient({
    @required this.name,
    @required this.tags,
  });
}
