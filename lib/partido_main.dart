import 'package:cupamerica/description.dart';
import 'package:cupamerica/partidosbar.dart';
import 'package:flutter/material.dart';
import 'partido_list.dart';

String descriptionDummy = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat.";

class PartidoMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 290,
                ),
                Container(
                  height: 300,
                  color: Color.fromARGB(10, 153, 46, 69),
                  child: ListView(
                    children: <Widget>[
                      PartidoList(),
                      PartidoList(),
                    ],
                  )
                ),

              ],
            ),
            PartidoHeaderAppBar()
          ],
        );
  }
  }
