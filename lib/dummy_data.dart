import 'package:listodo/enums/units_enum.dart';
import 'package:listodo/models/ingredient_model.dart';
import 'package:listodo/models/list_line_model.dart';
import 'package:listodo/models/recipe_model.dart';
import 'package:listodo/models/user_model.dart';

const user1 = User(firstname: 'Lea', lastname: 'Guené', picture: '');
const user2 = User(firstname: 'Tobi', lastname: 'Deuz', picture: '');
const user3 = User(firstname: 'Pascaline', lastname: 'Blonx', picture: '');

List<Recipe> dummyRecipes = [
  Recipe(
    name: 'Chachouka de courgettes',
    picture:
        'https://images.unsplash.com/photo-1572449043416-55f4685c9bb7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80',
    time: 40,
    likes: 200,
    price: 20,
    creator: user1,
    ingredients: [
      ListLine(
        ingredient: Ingredient(name: 'Courgette', tags: []),
        quantity: 2,
        unit: Unit.PIECE,
      ),
      ListLine(
        ingredient: Ingredient(name: 'Tomate', tags: []),
        quantity: 3,
        unit: Unit.PIECE,
      ),
      ListLine(
        ingredient: Ingredient(name: 'Pomme de terre', tags: []),
        quantity: 3,
        unit: Unit.PIECE,
      ),
    ],
  ),
  Recipe(
    name: "Pattes bolo",
    time: 20,
    likes: 100,
    price: 10,
    creator: user2,
    picture:
        'https://images.unsplash.com/photo-1572449043416-55f4685c9bb7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80',
    ingredients: [],
  )
];
