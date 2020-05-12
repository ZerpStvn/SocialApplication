import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:Text('Post',
        style:TextStyle(color:Colors.black))
      ),
    );
  }
}