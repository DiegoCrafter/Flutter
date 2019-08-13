import 'package:flutter/material.dart';

class TeamDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final levelIndicator = Container(
      child: Container(
        child: LinearProgressIndicator(
            backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
            value: 3,
            valueColor: AlwaysStoppedAnimation(Colors.green)),
      ),
    );

    final coursePrice = Container(
      padding: const EdgeInsets.all(7.0),
      decoration: new BoxDecoration(
          border: new Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5.0)),
      child: new Icon(
        Icons.notifications_active, color: Colors.white,
      ),
    );

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 60.0),
        Icon(
          Icons.directions_car,
          color: Colors.white,
          size: 20.0,
        ),
        Container(
          width: 90.0,
          child: new Divider(color: Colors.green),
        ),
        SizedBox(height: 10.0),
        Text(
          "UPeU Team",
          style: TextStyle(color: Colors.white, fontSize: 38.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(flex: 1, child: levelIndicator),
            Expanded(
                flex: 6,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "ACTIVO",
                      style: TextStyle(color: Colors.white),
                    ))),
            Expanded(flex: 1, child: coursePrice)
          ],
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/asin.jpg"),
                fit: BoxFit.cover,
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(20.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(153, 46, 69, .6)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 55.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    final bottomContentText = Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Text(
          "JUGADORES", 
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
    );

    final bottomcontext =Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: Text(
        "PARTIDOS",
        style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
      ),
    );

    final players =Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: new DecorationImage(
                image: new NetworkImage("https://www.pasionfutbol.com/__export/1514593927588/sites/pasionlibertadores/img/2017/12/26/kane-paraleer.jpg_1902800913.jpg"),
                fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: new DecorationImage(
                image: new NetworkImage("https://www.essentiallysports.com/wp-content/uploads/2017/05/Cristiano-Ronaldo-Top-10-Richest-Football-Players-in-The-World-2017.jpg"),
                fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: new DecorationImage(
                image: new NetworkImage("http://grumpybeer.com/wp-content/uploads/2018/02/4.-Neymar-e1518360074571.jpg"),
                fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: new DecorationImage(
                image: new NetworkImage("http://fcnaija.com/uploads/2016/11/lionel-messi.png"),
                fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0),
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: new DecorationImage(
                image: new NetworkImage("https://statics.sportskeeda.com/editor/2018/02/b90c9-1517760447-800.jpg"),
                fit: BoxFit.cover
              ),
            ),
          ),
        ],
      ),
    );

    final bottomContent = Container(
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(
        top: 30,
        left: 10,
        right: 10,
        bottom: 40
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          bottomContentText,
          SizedBox(height: 20.0,),
          players,
          SizedBox(height: 20.0,),
          bottomcontext
        ],
      )
    );

    return Scaffold(
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}