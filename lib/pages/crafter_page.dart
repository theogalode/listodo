import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:listodo/screens/creation_body_1_screen.dart';
import 'package:listodo/screens/creation_body_2_screen.dart';
import 'package:listodo/screens/creation_body_3_screen.dart';
import 'package:listodo/screens/creation_body_4_screen.dart';
import 'package:listodo/screens/creation_body_5_screen.dart';
import 'package:listodo/widget/ListodoCreationRecipeSteps.dart';
import 'package:listodo/widget/ListodoHomeRecipesLists.dart';
import 'package:listodo/widget/ListodoTabBar.dart';

import '../utils/listodo_colors.dart';
import '../utils/listodo_colors.dart';
import '../utils/listodo_colors.dart';
import '../utils/project_properties.dart';
import '../utils/project_properties.dart';
import '../widget/ListodoRoundedButton.dart';

class CrafterPage extends StatefulWidget {
  @override
  _CrafterPageState createState() => _CrafterPageState();
}

class _CrafterPageState extends State<CrafterPage> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 60),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "L'Atelier de création !",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              ListodoTabBar(
                items: [
                  Column(
                    children: [
                      CreationRecipeSteps(index: _index),
                      _index == 0 ? CreationBody1Screen() :
                      _index == 1 ? CreationBody2Screen() :
                      _index == 2 ? CreationBody3Screen() :
                      _index == 3 ? CreationBody4Screen() :
                       CreationBody5Screen(),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _index == 0 ? Container() : Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _index--;
                                  });
                                },
                                child: Text(
                                  'Précédent',
                                  style: TextStyle(fontSize: 22, color: ListodoColors.listodoSwatch),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStateProperty.all(5),
                                  shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            _index == 0 ? Container() : SizedBox(width: 25),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _index == 4 ? _index = 4 : _index++;
                                  });
                                },
                                child: Text(
                                  _index == 4 ? 'Publier' : 'Suivant',
                                  style: TextStyle(fontSize: 22),
                                ),
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(5),
                                  shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide(color: Colors.red),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )


                ],
              ),
            ],
          ),
        ));
  }
}

