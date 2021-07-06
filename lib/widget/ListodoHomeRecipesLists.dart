import 'package:flutter/material.dart';
import 'package:listodo/utils/listodo_colors.dart';

class ListodoHomeRecipesLists extends StatelessWidget {
  final List<Widget> recipes;
  final List<Widget> profiles;

  ListodoHomeRecipesLists({this.recipes, this.profiles});

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

  Widget _buildRecipesListView(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          _buildTitle('Explorer des recettes', () {}),
          _buildTitle('Les profils que je suis', () {}),
        ],
      ),
    );
  }
}
