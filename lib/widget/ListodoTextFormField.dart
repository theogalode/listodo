import 'package:flutter/material.dart';
import 'package:listodo/utils/project_properties.dart';

class ListodoTextFormField extends StatelessWidget {
  ListodoTextFormField({
    @required this.onSaved,
    @required this.borderColor,
    @required this.labelText,
    @required this.obscureText,
  });

  final onSaved;
  final Color borderColor;
  final String labelText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [ProjectProperties.boxShadow1],
      ),
      child: TextFormField(
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
