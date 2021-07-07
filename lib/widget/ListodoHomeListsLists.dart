import 'package:flutter/material.dart';
import 'package:listodo/dummy_data.dart';
import 'package:listodo/models/listodo_list_model.dart';
import 'package:listodo/utils/listodo_colors.dart';

import 'ListodoListItem.dart';

class ListodoHomeListsLists extends StatelessWidget {
  final List<ListodoList> listodoLists;
  final List<ListodoList> followedUsersLists;

  ListodoHomeListsLists({this.listodoLists, this.followedUsersLists});

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

  Widget _buildListsListView(context, lists) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return ListodoListItem(listodoList: lists[index]);
        },
        itemCount: lists.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildTitle('Explorer des listes', () {}),
            _buildListsListView(context, listodoLists),
            _buildTitle('Les profiles que je suis', () {}),
            _buildListsListView(context, followedUsersLists),
          ],
        ),
      ),
    );
  }
}
