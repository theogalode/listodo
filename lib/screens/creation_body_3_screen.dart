import 'package:flutter/material.dart';

import '../utils/project_properties.dart';

class CreationBody3Screen extends StatelessWidget {
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
                Text("Mes ingrédients", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [ProjectProperties.boxShadow1]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
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
                Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [ProjectProperties.boxShadow1]
                  ),
                  child: TextField(
                    maxLines: 7,
                    decoration: InputDecoration(
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
                Text("Image principale", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [ProjectProperties.boxShadow1]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontStyle: FontStyle.italic),
                      hintText: 'Url',
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
