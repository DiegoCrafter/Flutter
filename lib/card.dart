import 'package:flutter/material.dart';

class CardImage extends StatelessWidget{

  String pathImage = "assets/images/ballfield.jpg";
  CardImage (this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      child: new Column(
        children: <Widget>[
          Container(
            child: Text("Now Playing", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            padding: EdgeInsets.all(20.2),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text("Nigeria", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.only(
                    right: 20.0
                  ),
                ),
                Container(
                  child: Text("1 - 2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25.0),),
                  margin: EdgeInsets.only(
                    right: 15.0,
                    left: 30.0
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20.0
                  ),
                  child: Text("Argentina", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0
            ),
            child: Text("Ver detalles", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          )
        ],
      ),
      height: 180.0,
      width: 300.0,
      margin: EdgeInsets.only(
        top: 30.0,
        left: 15.0
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
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