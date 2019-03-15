import 'package:flutter/material.dart';

class Partido extends StatelessWidget{
  
  String pathImage = "asset/img/travel.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place";

  Partido(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final matches = Container(
      height: 60,
      width: 310,
      margin: EdgeInsets.only(
        left: 23,
        right: 23,
        top: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: Row(
        children: <Widget>[
        Container(
          width: 110,
          child: Text("Uruguay", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
        ),
        Container(
          width: 30,
          child: Text("3", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        ),
        Container(
          width: 30,
          child: Text("-", style: TextStyle(color: Color.fromARGB(255, 153, 46, 69), fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        ),
        Container(
          width: 30,
          child: Text("3", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        ),
        Container(
          width: 110,
          child: Text("Brazil", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
          )
        ],
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        matches,
      ],
    );
  }

}