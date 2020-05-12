import 'package:flutter/material.dart';

class Followers extends StatefulWidget {
  @override
  _FollowersState createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:Text('Followers',
        style:TextStyle(color:Colors.black))
      ),
    );
  }
}