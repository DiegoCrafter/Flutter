import 'package:cupamerica/card_news.dart';
import 'package:cupamerica/news.dart';
import 'package:cupamerica/news_gradient.dart';
import 'package:flutter/material.dart';

class NewsMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
          children: <Widget>[
            NewsAppBar(),
            Container(
              padding: EdgeInsets.all(25.0),
              height: 400,
              child: CardNewsImage("assets/images/asin.jpg"),
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 240,
                ),
                Container(
                  width: 400,
                  height: 120,
                ),
                Container( 
                  height: 200,
                  width: 400,
                  child: ListView(
                    children: <Widget>[
                      News("assets/img/travel.jpg","Hakuna Matata","2","There is amazing Peru"),
                      News("assets/img/travel.jpg","Hakuna Matata","2","There is amazing Peru"),
                      News("assets/img/travel.jpg","Hakuna Matata","2","There is amazing Peru")
                    ],
                  )
                  )
              ],
            )
          ],
        );
  }

}