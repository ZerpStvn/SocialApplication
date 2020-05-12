import 'package:Snap/ScreenUI/MainScreen/Chat/Chat.dart';
import 'package:Snap/ScreenUI/MainScreen/Chat/Online.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
 
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon:Icon(FontAwesomeIcons.solidClone),
          color: Colors.black,
          onPressed: (){},
          ),
          title: Container(
           child: Center(
             child: Text('CHAT',style:TextStyle(
               color: Colors.black,
               fontSize: 20
             )),
           ),
    ),
    actions: <Widget>[
     Row(
       children: <Widget>[
         IconButton(
           icon: Icon(Icons.search),color: Colors.black,
            onPressed: (){}),
            IconButton(
              icon: Icon(Icons.settings),color:Colors.black, 
              onPressed: (){})
       ],
     ),
    ],
    bottom: TabBar(
      indicatorColor:Colors.lightBlueAccent ,
      labelColor: Colors.black,
      tabs: [
      Tab(text: 'Message',),
      Tab(text: 'Online',),
    ]),

   ), 
   body: TabBarView(
     children: <Widget>[
       Chats(),
       OnlineChat(),
     ]
   ),
      ),
  );
  }
}