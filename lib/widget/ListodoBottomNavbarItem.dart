import 'package:flutter/material.dart';
import 'package:listodo/utils/listodo_colors.dart';

class ListodoBottomNavbarItem extends StatefulWidget {
  final IconData icon;
  final void Function() action;
  final Color iconColor;

  const ListodoBottomNavbarItem({
    @required this.icon,
    @required this.action,
    @required this.iconColor
  });

  @override
  State<ListodoBottomNavbarItem> createState() =>
      _ListodoBottomNavbarItemState();
}

class _ListodoBottomNavbarItemState extends State<ListodoBottomNavbarItem> {
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
                widget.icon,
                color: widget.iconColor,
                size: 25,
              ),
            ],
          ),
        ),
        onPressed: widget.action,
        shape: CircleBorder(),
        elevation: 0,
        highlightElevation: 0,
      ),
    );
  }
}
