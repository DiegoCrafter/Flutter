import 'package:flutter/material.dart';

class NewsAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return Container(
        height: 250.0,
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
    
        child: Text("Noticias",
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
