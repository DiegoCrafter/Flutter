import 'package:cupamerica/partido_list.dart';
import 'package:flutter/material.dart';
import 'gradient.dart';
import 'carlist.dart';

class PartidoHeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        MainCollapsingToolbar(),
        CardImageList(),
      ],
    );
  }

}