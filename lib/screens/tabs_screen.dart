import 'package:flutter/material.dart';
import 'package:listodo/pages/crafter_page.dart';
import 'package:listodo/pages/home_page.dart';
import 'package:listodo/pages/lists_page.dart';
import 'package:listodo/pages/profile_page.dart';
import 'package:listodo/pages/recipes_page.dart';
import 'package:listodo/utils/font_awesome_five.dart';
import 'package:listodo/widget/ListodoBottomNavbar.dart';
import 'package:listodo/widget/ListodoBottomNavbarItem.dart';
import 'package:listodo/widget/ListodoRoundedButton.dart';
import '../utils/listodo_colors.dart';

class TabsScreen extends StatefulWidget {
  static final routeName = '/tabs';

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomePage(),
        'title': 'Home',
      },
      {
        'page': RecipesPage(),
        'title': 'Recipes',
      },
      {
        'page': CrafterPage(),
        'title': 'Crafter',
      },
      {
        'page': ListsPage(),
        'title': 'Lists',
      },
      {
        'page': ProfilePage(),
        'title': 'Profile',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  Color _isSelected(int index) {
    if (_selectedPageIndex == index) {
      return ListodoColors.listodoSwatch;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ListodoColors.listodoLightBlue,
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: ListodoBottomNavbar(
        items: <Widget>[
          ListodoBottomNavbarItem(
              icon: FontAwesomeFive.home_1,
              action: () {
                _selectPage(0);
              },
              iconColor: _isSelected(1),
            ),
            ListodoRoundedButton(
              icon: _selectedPageIndex != 2 ? FontAwesomeFive.plus_1 : FontAwesomeFive.times,
              currentIndex: _selectedPageIndex,
              onPressed: () {
                _selectedPageIndex == 2 ? _selectPage(0) :  _selectPage(2);
              },
              width: 50,
              height: 50,
              backgroundColor: ListodoColors.listodoSwatch,
              iconColor: Colors.white,
              iconSize: 25,
              shadow: true,
            ),
            ListodoBottomNavbarItem(
                icon: FontAwesomeFive.list_1,
                action: () {
                  _selectPage(3);
                },
                iconColor: _isSelected(3)),
            ListodoBottomNavbarItem(
              icon: FontAwesomeFive.user_1,
              action: () {
                _selectPage(3);
              },
              iconColor: _isSelected(3)),
          ListodoBottomNavbarItem(
            icon: FontAwesomeFive.user_1,
            action: () {
              _selectPage(4);
            },
            iconColor: _isSelected(4),
          ),
        ],
      ),
    );
  }
}
