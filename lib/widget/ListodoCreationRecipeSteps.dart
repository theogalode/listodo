import 'package:flutter/material.dart';

import '../utils/listodo_colors.dart';

class CreationRecipeSteps extends StatefulWidget {

  final int index;


  const CreationRecipeSteps({
    @required this.index,
  });

  @override
  _CreationRecipeStepsState createState() => _CreationRecipeStepsState();
}

class _CreationRecipeStepsState extends State<CreationRecipeSteps> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width * 0.2 - 16,
            decoration: BoxDecoration(
              color: widget.index == 0 ? ListodoColors.listodoSwatch : Colors.black12,
              borderRadius: BorderRadius.circular(100)
            ),
          ),
          SizedBox(width: 5,),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width * 0.2 - 16,
            decoration: BoxDecoration(
                color: widget.index == 1 ? ListodoColors.listodoSwatch : Colors.black12,
                borderRadius: BorderRadius.circular(100)
            ),
          ),
          SizedBox(width: 5,),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width * 0.2 - 16,
            decoration: BoxDecoration(
                color: widget.index == 2 ? ListodoColors.listodoSwatch : Colors.black12,
                borderRadius: BorderRadius.circular(100)
            ),
          ),
          SizedBox(width: 5,),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width * 0.2 - 16,
            decoration: BoxDecoration(
                color: widget.index == 3 ? ListodoColors.listodoSwatch : Colors.black12,
                borderRadius: BorderRadius.circular(100)
            ),
          ),
          SizedBox(width: 5,),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width * 0.2 - 16,
            decoration: BoxDecoration(
                color: widget.index == 4 ? ListodoColors.listodoSwatch : Colors.black12,
                borderRadius: BorderRadius.circular(100)
            ),
          )
        ],
      ),
    );
  }
}
