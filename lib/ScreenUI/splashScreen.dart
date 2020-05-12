import 'dart:async';
import 'package:Snap/Registration/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreenUI extends StatefulWidget {
  @override
  _SplashScreenUIState createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
void initState(){
  super.initState();
  startTimer();
}
startTimer()async{
  var duration = Duration(seconds: 5);
  return Timer(duration, route);
}
route(){
  Navigator.pushReplacement(context,MaterialPageRoute(
    builder: (context) => LoginPage(),
  ));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
    ),
      body:Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(150),
              decoration: BoxDecoration(
                color:Colors.transparent )
            ),
            Text("",
            style:GoogleFonts.dancingScript(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ) 
            )),
          Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
        CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage('images/hiclipart.png',),
          backgroundColor: Colors.transparent,
          ),
          SizedBox(height:10),
          Column(
            children: <Widget>[
              Container(
                 alignment: Alignment.bottomCenter,
                 child: Column(  
                  children: <Widget>[
                      CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height:10),
                    Column(
                      children:<Widget>[
                    Text("Loading",
                     style:GoogleFonts.dancingScript(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                  ) 
                   ),
                    ),],),
                  ],),
               ),
            ],
          ),
       ],
          ),
          ],
          ),
    );
  }
}