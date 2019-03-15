import 'package:flutter/material.dart';

class CardNewsImage extends StatelessWidget{

  String pathImage = "assets/images/ballfield.jpg";
  CardNewsImage (this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      child: new Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 180.0
            ),
            child: Text("Lionel Messi Goal", 
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
          )
        ],
      ),
      height: 250.0,
      width: 290.0,
      margin: EdgeInsets.only(
        bottom: 30,
        left: 15.0
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(pathImage),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );
    return Stack(
      alignment: Alignment(0.9,1.1),
      children: <Widget>[
        card,
      ],
    );
  }

}