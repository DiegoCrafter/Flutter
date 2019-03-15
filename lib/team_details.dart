import 'package:flutter/material.dart';

class TeamDetail extends StatefulWidget {
    final String name;
    TeamDetail({this.name});
    @override
    _TeamDetailState createState() => new _TeamDetailState();
  }

  class _TeamDetailState extends State<TeamDetail>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Text(widget.name),
    );
    }
    
  }
  