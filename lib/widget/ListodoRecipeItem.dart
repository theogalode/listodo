import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:listodo/models/recipe_model.dart';
import 'package:listodo/utils/font_awesome_five.dart';
import 'package:listodo/utils/font_awesome_four.dart';
import 'package:listodo/utils/listodo_colors.dart';
import 'package:listodo/utils/project_properties.dart';

class ListodoRecipeItem extends StatelessWidget {
  final Recipe recipe;

  ListodoRecipeItem({this.recipe});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.87,
          height: MediaQuery.of(context).size.height * 0.27,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            margin: EdgeInsets.all(10),
            child: Stack(
              fit: StackFit.expand,
              alignment: AlignmentDirectional.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    recipe.picture,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            recipe.name,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              shadows: [ProjectProperties.boxShadow2],
                            ),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '${recipe.time} minutes',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                shadows: [ProjectProperties.boxShadow2],
                              ),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '≃${recipe.price}€',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                shadows: [ProjectProperties.boxShadow2],
                              ),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.05,
          padding: EdgeInsets.symmetric(horizontal: 2.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: ListodoColors.listodoAccent,
                            backgroundImage: NetworkImage(
                              recipe.creator.picture,
                            ),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            '${recipe.creator.firstname} ${recipe.creator.lastname[0]}.',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeFive.comments,
                        color: Colors.black,
                        size: 22,
                      ),
                      SizedBox(width: 7),
                      Text('${recipe.comments}'),
                      SizedBox(width: 10),
                      Icon(
                        FontAwesomeFour.heart_empty,
                        color: ListodoColors.listodoSwatch,
                        size: 22,
                      ),
                      SizedBox(width: 7),
                      Text('${recipe.likes}'),
                      SizedBox(width: 10),
                      Icon(
                        FontAwesomeFour.bookmark_empty,
                        color: Colors.black,
                        size: 22,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
