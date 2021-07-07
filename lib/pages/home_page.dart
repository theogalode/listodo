import 'package:flutter/material.dart';
import 'package:listodo/dummy_data.dart';
import 'package:listodo/widget/ListodoHomeListsLists.dart';
import 'package:listodo/widget/ListodoHomeRecipesLists.dart';
import 'package:listodo/widget/ListodoTabBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 350,
          margin: EdgeInsets.only(top: 60),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(right: 30, left: 30),
              hintText: 'Que recherchez vous ?',
            ),
          ),
        ),
        Column(
          children: [
            ListodoTabBar(
              items: [
                ListodoHomeRecipesLists(
                  recommendedRecipes: dummyRecommendedRecipes,
                  followedUsersRecipes: dummyFollowedUsersRecipes,
                ),
                ListodoHomeListsLists(
                  listodoLists: dummyListodoList,
                  followedUsersLists: dummyFollowedUsersListodoLists,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
