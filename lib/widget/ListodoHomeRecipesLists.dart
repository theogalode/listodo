import 'package:flutter/material.dart';
import 'package:listodo/models/recipe_model.dart';
import 'package:listodo/utils/listodo_colors.dart';
import 'package:listodo/widget/ListodoRecipeItem.dart';

class ListodoHomeRecipesLists extends StatelessWidget {
  final List<Recipe> recommendedRecipes;
  final List<Recipe> followedUsersRecipes;

  ListodoHomeRecipesLists({this.recommendedRecipes, this.followedUsersRecipes});

  Widget _buildTitle(String title, void Function() action) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: action,
          child: Text(
            'Voir plus',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ListodoColors.listodoSwatch,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRecipesListView(context, recipes) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return ListodoRecipeItem(recipe: recipes[index]);
        },
        itemCount: recipes.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildTitle('Explorer des recettes', () {}),
            _buildRecipesListView(context, recommendedRecipes),
            _buildTitle('Les profils que je suis', () {}),
            _buildRecipesListView(context, followedUsersRecipes),
          ],
        ),
      ),
    );
  }
}
