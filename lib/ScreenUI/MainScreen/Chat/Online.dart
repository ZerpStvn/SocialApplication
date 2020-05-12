import 'package:flutter/material.dart';

class OnlineChat extends StatefulWidget {
  @override
  _OnlineChatState createState() => _OnlineChatState();
}

class _OnlineChatState extends State<OnlineChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:Text('Online',
        style:TextStyle(color:Colors.black))
      ),
    );
  }
}