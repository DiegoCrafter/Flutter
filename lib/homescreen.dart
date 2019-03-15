import 'package:cupamerica/newsmain.dart';
import 'package:cupamerica/partido_main.dart';
import 'package:cupamerica/positions.dart';
import 'package:flutter/material.dart';
import 'team.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(tabBar: CupertinoTabBar(
          items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home, color: Color.fromARGB(255, 153, 46, 69)),
          title: Text("Noticias")
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.music_note, color: Color.fromARGB(255, 153, 46, 69)),
          title: Text("Partidos")
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.share_up, color: Color.fromARGB(255, 153, 46, 69)),
          title: Text("Equipos")
            ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tab_unselected, color: Color.fromARGB(255, 153, 46, 69)),
          title: Text("Posiciones")
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index){
        switch(index){
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => NewsMain(),
            );
            break;
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => PartidoMain(),
            );
            break;
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => Teams(),
            );
            break;
          case 3:
            return CupertinoTabView(
              builder: (BuildContext context) => PositionToolbar(),
            );
          }
            },
          ),
        ),
    
    );
  }
}
