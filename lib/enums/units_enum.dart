enum Unit {
  PIECE,
  KILOGRAM,
  GRAM,
  SPOON,
  MILLILITER,
  CENTILITER,
  LITER,
}

extension UnitExtension on Unit {
  String get label {
    switch (this) {
      case Unit.PIECE:
        return 'pièce';
      case Unit.KILOGRAM:
        return 'kg';
      case Unit.GRAM:
        return 'g';
      case Unit.SPOON:
        return 'cuillère';
      case Unit.MILLILITER:
        return 'ml';
      case Unit.CENTILITER:
        return 'cl';
      case Unit.LITER:
        return 'l';
      default:
        return '';
    }
  }
}

