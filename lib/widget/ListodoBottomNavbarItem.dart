import 'package:flutter/material.dart';
import 'package:listodo/utils/listodo_colors.dart';

class ListodoBottomNavbarItem extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback action;

  const ListodoBottomNavbarItem({
    required this.icon,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: RawMaterialButton(
        fillColor: Colors.transparent,
        splashColor: ListodoColors.listodoAccent,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: Colors.black,
                size: 25,
              ),
            ],
          ),
        ),
        onPressed: action,
        shape: CircleBorder(),
        elevation: 0,
        highlightElevation: 0,
      ),
    );
  }
}
