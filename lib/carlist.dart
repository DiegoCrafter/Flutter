import 'package:flutter/material.dart';
import 'card.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/ballfield.jpg"),
          CardImage("assets/images/ballfield.jpg"),
        ],
      ),
    );
  }

}