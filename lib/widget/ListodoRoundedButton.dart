import 'package:flutter/material.dart';
import 'package:listodo/utils/listodo_colors.dart';

class ListodoRoundedButton extends StatelessWidget {
  ListodoRoundedButton({
    required this.icon,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.iconColor,
    required this.iconSize,
    required this.shadow,
  });

  final IconData icon;
  final GestureTapCallback onPressed;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;
  final bool shadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: RawMaterialButton(
        fillColor: backgroundColor,
        splashColor: ListodoColors.listodoAccent,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
            ],
          ),
        ),
        onPressed: onPressed,
        shape: CircleBorder(),
        elevation: 2,
      ),
    );
  }
}
