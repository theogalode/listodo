import 'package:listodo/enums/units_enum.dart';
import 'package:listodo/models/ingredient_model.dart';
import 'package:listodo/models/list_line_model.dart';
import 'package:listodo/models/recipe_model.dart';
import 'package:listodo/models/tag_model.dart';
import 'package:listodo/models/user_model.dart';

import 'models/listodo_list_model.dart';

const user1 = User(
    firstname: 'Lea',
    lastname: 'Guené',
    picture:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80');
const user2 = User(
    firstname: 'Tobi',
    lastname: 'Deuz',
    picture:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80');
const user3 = User(
    firstname: 'Pascaline',
    lastname: 'Blonx',
    picture:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80');

List<User> dummyFollowedUsers = [user1, user2, user3];

List<Tag> dummyTags = [
  Tag(name: 'Végétarien'),
];

List<Recipe> dummyRecommendedRecipes = [
  Recipe(
    name: 'Chachouka de courgettes',
    picture:
        'https://images.unsplash.com/photo-1572449043416-55f4685c9bb7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80',
    time: 40,
    likes: 200,
    comments: 20,
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
    name: "Pâtes bolo",
    time: 20,
    likes: 100,
    comments: 10,
    price: 10,
    creator: user2,
    picture:
        'https://images.unsplash.com/photo-1530199320416-f8859a3e988c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',
    ingredients: [],
  )
];

List<Recipe> dummyFollowedUsersRecipes = [
  Recipe(
    name: 'Pizza vege',
    picture:
        'https://images.unsplash.com/photo-1490717064594-3bd2c4081693?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',
    time: 40,
    likes: 200,
    comments: 20,
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
    name: "Steak tartare",
    time: 20,
    likes: 100,
    comments: 10,
    price: 10,
    creator: user2,
    picture:
        'https://images.unsplash.com/photo-1546010361-3b7b468209e3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',
    ingredients: [],
  ),
  Recipe(
    name: 'Chachouka de courgettes',
    picture:
        'https://images.unsplash.com/photo-1572449043416-55f4685c9bb7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80',
    time: 40,
    likes: 200,
    comments: 20,
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
];

List<ListodoList> dummyListodoList = [
  ListodoList(
      name: "Liste Végétarienne",
      likes: 100,
      comments: 10,
      price: 10,
      creator: user2,
      picture:
          'https://images.unsplash.com/photo-1557844352-761f2565b576?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',
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
      tags: [
        dummyTags[0]
      ]),
];

List<ListodoList> dummyFollowedUsersListodoLists = [
  ListodoList(
      name: "Liste Végétarienne",
      likes: 100,
      comments: 10,
      price: 10,
      creator: user2,
      picture:
          'https://images.unsplash.com/photo-1557844352-761f2565b576?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',
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
      tags: [
        dummyTags[0]
      ]),
];
