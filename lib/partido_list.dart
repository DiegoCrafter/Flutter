import 'package:flutter/material.dart';
import 'partido.dart';

class PartidoList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new ListTile(
          subtitle: Text("HOY", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
        ),
        new Partido ("assets/img/travel.jpg","Hakuna Matata","2","There is amazing Peru"),
        new Partido ("assets/img/travel.jpg","Ann","2","Ann"),
    
      ],
    );
  }

}