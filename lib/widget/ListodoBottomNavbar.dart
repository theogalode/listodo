import 'package:flutter/material.dart';
import 'package:listodo/utils/project_properties.dart';

class ListodoBottomNavbar extends StatelessWidget {
  final List<Widget> items;
  ListodoBottomNavbar({
    @required this.items,
  });

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
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items,
      ),
    );
  }
}
