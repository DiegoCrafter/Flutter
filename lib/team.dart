import 'package:flutter/material.dart';
import 'team-list.dart';

class Teams extends StatefulWidget {
  @override
  _TeamsState createState() => _TeamsState();
}

class _TeamsState extends State<Teams>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 40,
              title: Container(
                  width: 400,
                  height: 18,
                  child: Text("Equipos"),
                  margin: EdgeInsets.only(top: 25),
              ),
              centerTitle: true,
              pinned: true,
              floating: false,
              backgroundColor: Color.fromARGB(255, 153, 46, 69),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "Futbol",
                  ),
                  Tab(
                    text: "Basquet",
                  ),
                  Tab(
                    text: "Voley",
                  ),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: <Widget>[
            PageOne(),
            
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return TeamList();
  }
}



class DataSearch extends SearchDelegate<String> {
  final teams = [
    "Chacla Team",
    "Gariteros Sports",
    "Atletico UPeU",
    "FC La Era",
    "Sporting Tia Oti",
    "Ñaña Boys",
    "Gluten United"
  ];

  final recentTeams = [
    "Ñaña Boys",
    "Gluten United"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(icon: Icon(Icons.clear), onPressed: (){
        query = "";
      },)
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: AnimatedIcon(
      icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation,
      ),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 100.0,
      height: 200.0,
      child: Center(
        child: Text(query),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?recentTeams:teams.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context, index)=>ListTile(
      onTap: (){
        showResults(context);
      },
      leading: Icon(Icons.people),
      title: RichText(text: TextSpan(
        text: suggestionList[index].substring(0, query.length),
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: suggestionList[index].substring(query.length),
            style: TextStyle(color: Colors.grey)
          )]
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
  
}