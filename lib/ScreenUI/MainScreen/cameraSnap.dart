import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';



class CameraSnap extends StatefulWidget {
  @override
  _CameraSnapState createState() => _CameraSnapState();
}

class _CameraSnapState extends State<CameraSnap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(FontAwesomeIcons.solidClone, color:  Colors.black),
        title: Padding(
          padding: const EdgeInsets.only(right:50),
          child: Center(
               child: Text("",
                  style:GoogleFonts.dancingScript(
                     textStyle: TextStyle(
                      color: Colors.lightBlueAccent,
                       fontSize: 25,
                       fontWeight: FontWeight.bold
                      ) 
                    )),
                ),
        ),
      ),
      body: Center(

          child:Center(
        child:Text('Still Working for this feature',
        style: TextStyle(fontSize: 20,
        color:Colors.black)),
        ),
        ),
    );
  }
}