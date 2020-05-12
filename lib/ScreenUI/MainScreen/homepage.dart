import 'package:Snap/ScreenUI/MainScreen/HomePage/Friends.dart';
import 'package:Snap/ScreenUI/MainScreen/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HomePage/Followers.dart';
import 'HomePage/Trending.dart';


class HomePageUI extends StatefulWidget {
  @override
  _HomePageUI createState() => _HomePageUI();
}

class _HomePageUI extends State<HomePageUI> {
 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(FontAwesomeIcons.solidClone, color:  Colors.black),
         title: Padding(
           padding: const EdgeInsets.only(top:7),
           child: Container(
             height: 30,
              child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
              hintText: 'Search',
              contentPadding: EdgeInsets.only(top:10,left: 10),
           focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(30)
           ),
           enabledBorder: OutlineInputBorder(
               borderSide: BorderSide(color:Colors.black ,width:1.0),
               borderRadius: BorderRadius.circular(30)
           ),
        ),
      ),
    ),
         ),
     actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right:10, bottom: 10,top: 20),
        child: Container(
         width: 30,
         height: 30,
         decoration:BoxDecoration(  
           shape: BoxShape.circle,
           color: Colors.white,
           ),
           child: GestureDetector(
             onTap: (){
               Navigator.push(context, 
              MaterialPageRoute
              (builder: (context) => ProfilePage()));
             },
             child: CircleAvatar(
             backgroundImage: AssetImage(
               'images/Steve.jpg'
             ), 
             radius: 50,
             ),
           ),
        ),
      )
    ],
      bottom: TabBar(
      indicatorColor:Colors.lightBlueAccent ,
      labelColor: Colors.black,
      tabs: [
      Tab(text: 'Friends',),
      Tab(text:'Following',),
      Tab(text: 'Trending',),
    ]),

    
      ),
      body: TabBarView(children: <Widget>[
        Friends(),
        Followers(),
        Trending(),
      ],),
    ),
  );
  }
}