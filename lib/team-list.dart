import 'package:cupamerica/team_details.dart';
import 'package:flutter/material.dart';
import 'package:cupamerica/models/teammodel.dart';

class TeamList extends StatefulWidget {

  @override
  _TeamListState createState() => new _TeamListState();
  
}

class _TeamListState extends State<TeamList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new Divider(
              height: 2.0,
            ),
            new ListTile(
              leading: new CircleAvatar(
                backgroundImage: NetworkImage(messageData[i].imageUrl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                new Text(
                  messageData[i].name,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.star),
              ],),
              onTap: (){
                var route  = new MaterialPageRoute(
                  builder: (BuildContext context) => new TeamDetail()
                );
                Navigator.of(context).push(route);
              },
            )
          ],
        ),
    );
  }
  
}