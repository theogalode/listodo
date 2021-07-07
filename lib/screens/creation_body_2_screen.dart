import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/listodo_colors.dart';
import '../utils/listodo_colors.dart';
import '../utils/project_properties.dart';

class CreationBody2Screen extends StatefulWidget {
  @override
  _CreationBody2ScreenState createState() => _CreationBody2ScreenState();
}

class _CreationBody2ScreenState extends State<CreationBody2Screen> {
  int _value = 1;
  int _lvl = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nombre de portion(s)",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                    width: MediaQuery.of(context).size.width - 60,
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: _value == 1
                                    ? ListodoColors.listodoSwatch
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(9)),
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            alignment: Alignment.center,
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color:
                                      _value == 1 ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _value = 1;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: _value == 2
                                    ? ListodoColors.listodoSwatch
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(9)),
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            alignment: Alignment.center,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  color:
                                      _value == 2 ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _value = 2;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: _value == 3
                                    ? ListodoColors.listodoSwatch
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(9)),
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            alignment: Alignment.center,
                            child: Text(
                              "3",
                              style: TextStyle(
                                  color:
                                      _value == 3 ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _value = 3;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: _value == 4
                                    ? ListodoColors.listodoSwatch
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(9)),
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            alignment: Alignment.center,
                            child: Text(
                              "4",
                              style: TextStyle(
                                  color:
                                      _value == 4 ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _value = 4;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: _value == 5
                                    ? ListodoColors.listodoSwatch
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(9)),
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            alignment: Alignment.center,
                            child: Text(
                              "5",
                              style: TextStyle(
                                  color:
                                      _value == 5 ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _value = 5;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: _value == 6
                                    ? ListodoColors.listodoSwatch
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(9)),
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            alignment: Alignment.center,
                            child: Text(
                              "6",
                              style: TextStyle(
                                  color:
                                      _value == 6 ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _value = 6;
                            });
                          },
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Niveau de difficulté",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                    width: MediaQuery.of(context).size.width - 60,
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: _lvl == 1
                                    ? ListodoColors.listodoSwatch
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(9)),
                            width:
                                MediaQuery.of(context).size.width * 0.33 - 26,
                            height: MediaQuery.of(context).size.width * 0.1,
                            alignment: Alignment.center,
                            child: Text(
                              "Simple",
                              style: TextStyle(
                                  color:
                                      _lvl == 1 ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _lvl = 1;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: _lvl == 2
                                    ? ListodoColors.listodoSwatch
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(9)),
                            width:
                                MediaQuery.of(context).size.width * 0.33 - 26,
                            height: MediaQuery.of(context).size.width * 0.1,
                            alignment: Alignment.center,
                            child: Text(
                              "Moyen",
                              style: TextStyle(
                                  color:
                                      _lvl == 2 ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _lvl = 2;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: _lvl == 3
                                    ? ListodoColors.listodoSwatch
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(9)),
                            width:
                                MediaQuery.of(context).size.width * 0.33 - 26,
                            height: MediaQuery.of(context).size.width * 0.1,
                            alignment: Alignment.center,
                            child: Text(
                              "Difficile",
                              style: TextStyle(
                                  color:
                                      _lvl == 3 ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _lvl = 3;
                            });
                          },
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Temps de préparation",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [ProjectProperties.boxShadow1]),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontStyle: FontStyle.italic),
                      hintText: 'Min',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(right: 30, left: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Temps de cuisson",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [ProjectProperties.boxShadow1]),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontStyle: FontStyle.italic),
                      hintText: 'Min',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(right: 30, left: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
