import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listodo/utils/listodo_colors.dart';
import 'package:listodo/utils/project_properties.dart';
import 'dart:io' show Platform;

class ListodoTextFormField extends StatelessWidget {
  ListodoTextFormField({
    @required this.onSaved,
    @required this.borderColor,
    @required this.labelText,
    @required this.obscureText,
    @required this.controller
  });

  final onSaved;
  final Color borderColor;
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [ProjectProperties.boxShadow1],
      ),
      child: Platform.isIOS
          ? CupertinoTextField(
              controller: controller,
              placeholder: labelText,
              cursorColor: ListodoColors.listodoSwatch,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
            )
          : TextFormField(
              controller: controller,
              decoration: InputDecoration(
                labelText: labelText,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: borderColor),
                ),
              ),
              obscureText: obscureText || false,
              keyboardType: TextInputType.emailAddress,
              onSaved: onSaved,
            ),
    );
  }
}
