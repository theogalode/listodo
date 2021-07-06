import 'package:flutter/material.dart';
import 'package:listodo/widget/ListodoTabBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 350,
            margin: EdgeInsets.only(top: 60),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(right: 30, left: 30),
                hintText: 'Que recherchez vous ?',
              ),
            ),
          ),
          ListodoTabBar()
        ],
      ),
    );
  }
}
