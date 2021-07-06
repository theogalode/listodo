import 'package:flutter/material.dart';
import 'package:listodo/models/list_line_model.dart';
import 'user_model.dart';

class Recipe {
  final String name;
  final String picture;
  final int time;
  final int likes;
  final int price;
  final User creator;
  final bool isLiked = false;
  final bool isSaved = false;
  final List<ListLine> ingredients;

  const Recipe({
    @required this.name,
    @required this.picture,
    @required this.time,
    @required this.likes,
    @required this.price,
    @required this.creator,
    @required this.ingredients,
  });
}
