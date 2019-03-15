import 'package:flutter/material.dart';

class News extends StatelessWidget{
  
  String pathImage = "asset/img/travel.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place";

  News(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final matches = Container(
      height: 80,
      width: 290,
      margin: EdgeInsets.only(
        left: 40,
        right: 23,
        top: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: Row(
        children: <Widget>[
        Container(
          width: 210,
          child: Column(
            children: <Widget>[
              Container(
                height: 45,
                margin: EdgeInsets.all(6),
                child: Text("Uruguay sweating on Cavani after Saturday Night", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
              ),
              Container(
                height: 20,
                child: Text("Clarence Garcia 23 min ago", style: TextStyle(fontSize: 9), textAlign: TextAlign.left,),
              )
            ],
          )
        ),
        Container(
          height: 77,
          width: 79,
          decoration: BoxDecoration(
            image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/asin.jpg"),
            ),
            borderRadius: BorderRadius.all(Radius.circular(6))
          ),
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