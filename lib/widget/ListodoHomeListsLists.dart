import 'package:flutter/material.dart';
import 'package:listodo/utils/listodo_colors.dart';

class ListodoHomeListsLists extends StatelessWidget {
  final List<Widget> lists;
  final List<Widget> profiles;

  ListodoHomeListsLists({this.lists, this.profiles});

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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          _buildTitle('Explorer des listes', () {}),
          _buildTitle('Les profiles que je suis', () {}),
        ],
      ),
    );
  }
}
