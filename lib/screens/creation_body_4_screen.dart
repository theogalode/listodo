import 'package:flutter/material.dart';

import '../utils/listodo_colors.dart';
import '../utils/project_properties.dart';

class CreationBody4Screen extends StatefulWidget {
  @override
  _CreationBody4ScreenState createState() => _CreationBody4ScreenState();
}

class _CreationBody4ScreenState extends State<CreationBody4Screen> {
  List<String> step = [];

  final stepController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 60,
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "Étapes de la recette",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            step.length <= 0
                ? Container()
                : Container(
                    width: MediaQuery.of(context).size.width - 60,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: step.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width - 60,
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Étape " + (index+1).toString(), style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(height: 10),
                              Text(step[0]),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nouvelle étape",
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
                      controller: stepController,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontStyle: FontStyle.italic),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(right: 30, left: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width * 0.3,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    step.add(this.stepController.text);
                    stepController.text = '';
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
          ],
        ),
      ),
    );
  }
}
