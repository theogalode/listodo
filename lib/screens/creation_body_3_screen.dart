import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listodo/enums/units_enum.dart';

import '../utils/font_awesome_five.dart';
import '../utils/listodo_colors.dart';
import '../utils/listodo_colors.dart';
import '../utils/listodo_colors.dart';
import '../utils/project_properties.dart';

class CreationBody3Screen extends StatefulWidget {
  @override
  _CreationBody3ScreenState createState() => _CreationBody3ScreenState();
}

class _CreationBody3ScreenState extends State<CreationBody3Screen> {
  List<String> ingredient = [];
  List<int> quantite = [];
  List<String> unity = [];
  int _indexUnity = 1;

  final nameController = TextEditingController();
  final qteController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    qteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width - 60,
              child: Text(
                "Mes ingrédients",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ajout d'ingrédients",
                  style: TextStyle(fontSize: 18),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [ProjectProperties.boxShadow1]),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Ex : Carotte',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(right: 30, left: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Quantité",
                  style: TextStyle(fontSize: 18),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [ProjectProperties.boxShadow1]),
                  child: TextField(
                    controller: qteController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Ex : 250',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(right: 30, left: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 60,
            height: 40,
            padding: EdgeInsets.only(top: 5),
            child: ListView.builder(
              itemCount: Unit.values.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                        color: _indexUnity == index + 1
                            ? ListodoColors.listodoSwatch
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    alignment: Alignment.center,
                    child: Text(
                      Unit.values[index].label,
                      style: TextStyle(
                          color: _indexUnity == index + 1
                              ? Colors.white
                              : Colors.black,
                          fontSize: 14),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _indexUnity = index + 1;
                    });
                  },
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.3,
            height: 30,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  ingredient.add(this.nameController.text);
                  quantite.add(int.parse(this.qteController.text));
                  unity.add(Unit.values[_indexUnity - 1].label);
                  nameController.text = '';
                  qteController.text = '';
                });
              },
              child: Text(
                'Ajouter',
                style:
                    TextStyle(fontSize: 16, color: ListodoColors.listodoSwatch),
              ),
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
          ),
          ingredient.length <= 0 ? Container() : Container(
            height: 150,
            width: MediaQuery.of(context).size.width - 60,
            padding: EdgeInsets.only(top: 10),
            child: ListView.builder(
              itemCount: ingredient.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ingredient[index],
                            style: TextStyle(fontSize: 22),
                          ),
                          Row(
                            children: [
                              Text(
                                quantite[index].toString(),
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(width: 3),
                              Text(
                                unity[index],
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        child: Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: ListodoColors.listodoSwatch,
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            FontAwesomeFive.trash_1,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            ingredient.removeAt(index);
                            quantite.removeAt(index);
                            unity.removeAt(index);
                          });
                        },
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
