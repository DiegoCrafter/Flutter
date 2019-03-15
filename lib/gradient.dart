import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class MainCollapsingToolbar extends StatefulWidget {
  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar> {
  @override
  Widget build(BuildContext context) {
      return Container(
        height: 200.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 153, 46, 69),
              Color.fromARGB(220, 153, 46, 69)
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
          )
        ),
        child: Text("Partidos",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
          ),
        alignment: Alignment(-0.9, -0.6),
      );  
      
  }
}
