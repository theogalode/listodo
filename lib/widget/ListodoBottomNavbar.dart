import 'package:flutter/material.dart';
import 'package:listodo/utils/listodo_colors.dart';
import 'package:listodo/utils/font_awesome_five.dart';
import 'package:listodo/utils/project_properties.dart';
import 'package:listodo/widget/ListodoBottomNavbarItem.dart';
import 'package:listodo/widget/ListodoRoundedButton.dart';

class ListodoBottomNavbar extends StatefulWidget {
  @override
  _ListodoBottomNavbarState createState() => _ListodoBottomNavbarState();
}

enum BottomIcons { Home, Recipes, Create, Lists, Profile }

class _ListodoBottomNavbarState extends State<ListodoBottomNavbar> {
  final ListodoColors lc = ListodoColors();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 40, top: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: <BoxShadow>[
            ProjectProperties.boxShadow1,
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ListodoBottomNavbarItem(
            icon: FontAwesomeFive.home_1,
            action: () {
              Navigator.of(context).pop();
            },
          ),
          ListodoBottomNavbarItem(
            icon: FontAwesomeFive.utensils,
            action: () {},
          ),
          ListodoRoundedButton(
              icon: FontAwesomeFive.plus_1,
              onPressed: () {},
              width: 50,
              height: 50,
              backgroundColor: ListodoColors.listodoSwatch,
              iconColor: Colors.white,
              iconSize: 25,
              shadow: true),
          ListodoBottomNavbarItem(
            icon: FontAwesomeFive.list_1,
            action: () {},
          ),
          ListodoBottomNavbarItem(
            icon: FontAwesomeFive.user_1,
            action: () {},
          ),
        ],
      ),
    );
  }
}
