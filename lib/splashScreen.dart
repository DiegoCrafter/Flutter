import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(
      const Duration(seconds: 4),
      () => Navigator.push(context, MaterialPageRoute(
        builder: (context) => HomeScreen()
      ),)
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 153, 46, 69),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage("assets/images/logoblanco.png"),
                      ),
                      Padding(padding: EdgeInsets.only(top: 12.0),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20.9
                      ),
                    ),
                    Text("Juntos logramos tus sueños",
                      style: TextStyle(color: Colors.white, fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ), 
              )
            ],
          )
        ],
      ),
    );
  }

}