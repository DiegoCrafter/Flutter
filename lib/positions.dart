import 'package:flutter/material.dart';

class PositionToolbar extends StatefulWidget {
  @override
  _PositionToolbarState createState() => _PositionToolbarState();
}

class _PositionToolbarState extends State<PositionToolbar>
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
              elevation: 50,
              expandedHeight: 80,
              centerTitle: true,
              title: Container(
                  width: 400,
                  height: 18,
                  child: Text("Puntuaciones"),
                  margin: EdgeInsets.only(top: 25),
              ),
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
            PageTwo(),
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
    return Container(
      color: Color.fromARGB(10, 153, 46, 69),
      child: ListView.builder(
      itemExtent: 260.0,
      itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(25.0),
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(5.0),
              child: new Container(
                child: DataTable(
                onSelectAll: (b){},
                sortAscending: false,
                columns: <DataColumn>[
                  DataColumn(
                    label: Text("Equipo", style: TextStyle(color: Colors.grey),),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text("V"),
                    numeric: true,
                  ),
                  DataColumn(
                    label: Text("V"),
                    numeric: true,
                  ),
                  DataColumn(
                    label: Text("Pts."),
                    numeric: true
                  )
                ],
                rows: names.map((name) => DataRow(
                  selected: true,
                  cells: [
                    DataCell(
                      Text(name.firstName, style: TextStyle(color: Colors.black), textAlign: TextAlign.start,),
                      showEditIcon: false,
                      placeholder: false
                    ),
                    DataCell(
                      Text(name.lastName, style: TextStyle(color: Colors.black),),
                      showEditIcon: false,
                      placeholder: false
                    ),
                    DataCell(
                      Text(name.lastName),
                      showEditIcon: false,
                      placeholder: false
                    )
                    ]
                  )
                )
              ),
              )
            ),
          ),
    ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 250.0,
      itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(10.0),
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(5.0),
              color: index % 2 == 0 ? Colors.white : Colors.deepOrange,
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          ),
    );
  }
}

class Name {
  String firstName;
  String lastName;

  Name({this.firstName, this.lastName});
}

var names = <Name>[
  Name(firstName: "Pawan", lastName: "2"),
  Name(firstName: "Aakash", lastName: "1"),
  Name(firstName: "Rohan", lastName: "4"),
];