import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Helpers extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromARGB(255, 153, 46, 69),
        title: Text("Tabla de Posiciones"),
        centerTitle: true,
        actions: <Widget>[
        IconButton(
            icon: Icon(Icons.list),
            onPressed: () {},
          )
        ],
      ),
      body: Container(),
    );
  }

}