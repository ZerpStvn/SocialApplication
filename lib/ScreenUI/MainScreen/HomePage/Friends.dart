import 'package:Snap/Models/Data.dart';
import 'package:Snap/ScreenUI/MainScreen/HomePage/profiledata.dart';
import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {

          Map post = posts[index];
          return PostItem(
            img: post['img'],
            name: post['name'],
            dp: post['dp'],
            time: post['time'],
          );
        },
      ),
       floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: (){},
      ),
    );
  }
}