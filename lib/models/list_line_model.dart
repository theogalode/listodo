import 'package:flutter/material.dart';

import 'package:listodo/enums/units_enum.dart';

import 'ingredient_model.dart';

class ListLine {
  final Ingredient ingredient;
  final int quantity;
  final Unit unit;

  const ListLine({
    @required this.ingredient,
    @required this.quantity,
    @required this.unit,
  });
}
