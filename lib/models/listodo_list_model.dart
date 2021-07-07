import 'package:flutter/material.dart';
import 'package:listodo/models/list_line_model.dart';
import 'package:listodo/models/tag_model.dart';
import 'user_model.dart';

class ListodoList {
  final String name;
  final String picture;
  final int likes;
  final int comments;
  final int price;
  final User creator;
  final bool isLiked = false;
  final bool isSaved = false;
  final List<ListLine> ingredients;
  final List<Tag> tags;

  const ListodoList({
    @required this.name,
    @required this.picture,
    @required this.likes,
    @required this.comments,
    @required this.price,
    @required this.creator,
    @required this.ingredients,
    @required this.tags
  });
}
