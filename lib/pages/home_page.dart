import 'package:flutter/material.dart';
import 'package:listodo/widget/ListodoTabBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 60, right: 40, left: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(30),
                  ),
                ),
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
