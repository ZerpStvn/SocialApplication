import 'package:Snap/ScreenUI/MainScreen/Profile/Photos.dart';
import 'package:Snap/ScreenUI/MainScreen/Profile/Post.dart';
import 'package:Snap/ScreenUI/MainScreen/Profile/Video.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
   double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon:Icon(FontAwesomeIcons.solidClone),color: Colors.black,
          onPressed: (){}),
          title: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Center(
              child: Text('Profile',
                style: TextStyle(
                  color:Colors.black,
                  fontSize: 20,
                ),),
            ),
          ),
          actions:<Widget>[
            Container(
              child:IconButton(
                icon: Icon(FontAwesomeIcons.gripHorizontal),
                color: Colors.black,
                 onPressed: (){}) ,)
          ]
        ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: 40),
              CircleAvatar(
                backgroundImage: AssetImage(
                  "images/Steve.jpg",
                ),
                radius: 50,
              ),
              SizedBox(height: 10),
              Text(
               "@Stevesski",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 10),

              Text(
                "Bio",
                style: TextStyle(
                ),
              ),
              SizedBox(height: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   FlatButton(
                     color: Colors.lightBlueAccent,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                     side: BorderSide(color: Colors.lightBlueAccent),),
                     textColor: Colors.white,
                    onPressed: (){}, 
                    child: Text('Edit')),
                    SizedBox(width: 10),
                IconButton(
                    icon:Icon(FontAwesomeIcons.cameraRetro,color: Colors.grey,),
                    color: Colors.black,
                    iconSize: 30,
                    onPressed: (){},
                  ),
                 SizedBox(width: 5,),
                    IconButton(
                      padding: EdgeInsets.only(top: 8),
                    icon:Icon(
                      FontAwesomeIcons.commentAlt,
                      color: Colors.black,
                      size: 29,
                    ),
                    color: Colors.transparent,
                    onPressed: (){},
                  ),

                ],
              ),

              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                         '15',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Friends",
                          style: TextStyle(
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '5',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Following",
                          style: TextStyle(
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        Text(
                          '5',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "followers",
                          style: TextStyle(
                          ),
                        ),
                      ],
                    ),
                
                  ],
                ),
              ),
              SizedBox(height: 20),
              DefaultTabController(
                length: 3,
             child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                TabBar(
                  indicatorColor: Colors.lightBlue,
                  labelColor: Colors.black,
                  onTap: (value) =>{},
                  tabs:[Tab(text: 'Photos',
                    icon:Icon(Icons.filter),),
                    Tab(text: 'Post',
                    icon: Icon(Icons.grid_on),),
                    Tab(text: 'Videos',
                    icon: Icon(Icons.tv),)
                  ]
                  ),
                  Container(
                    height: screenHeight * 0.70,
                    margin: EdgeInsets.only(left: 16.0, right:16.0),
                    child: TabBarView(
                      children: <Widget>[
                      PhotoPage(),
                      PostPage(),
                      VideoPage(),

                    ],)
                  )
              ],),
              ),  
            ],
          ),
        ),
      ),
   ),
);
  }
}