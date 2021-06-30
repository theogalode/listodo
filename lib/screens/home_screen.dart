import 'package:flutter/material.dart';
import 'package:listodo/models/recipe_model.dart';
import 'package:listodo/utils/project_properties.dart';
import 'package:listodo/widget/ListodoBottomNavbar.dart';
import '../utils/listodo_colors.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = '/home';

  static const List<Recipe> _userOptions = <Recipe>[
    Recipe(name: 'Patte Bolognaise'),
    Recipe(name: 'Pizza'),
    Recipe(name: 'Sushie'),
  ];

  static String _displayStringForOption(Recipe option) => option.name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: ListodoColors.listodoLightBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30),
                    ),
                  ),
                  contentPadding: EdgeInsets.only(right: 30, left: 30),
                  hintText: 'Que recherche vous ?',
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: ListodoBottomNavbar(),
      ),
    );
  }
}
