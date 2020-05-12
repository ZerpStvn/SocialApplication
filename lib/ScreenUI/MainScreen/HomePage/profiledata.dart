import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostItem extends StatefulWidget {
  final String dp;
  final String name;
  final String time;
  final String img;


  PostItem({
    Key key,
    @required this.dp,
    @required this.name,
    @required this.time,
    @required this.img
  }) : super(key: key);
  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  "${widget.dp}",
                ),
              ),

              contentPadding: EdgeInsets.all(0),
              title: Text(
                "${widget.name}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                "${widget.time}",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 11,
                ),
              ),
            ),

            Image.asset(
              "${widget.img}",
              height: 280,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget>[
                IconButton(icon: Icon(FontAwesomeIcons.solidHeart, color: Colors.pinkAccent,), onPressed: (){}),
                Text('1.5k', style: TextStyle(color: Colors.pinkAccent),),
                IconButton(icon: Icon(FontAwesomeIcons.thumbsUp, color: Colors.blueAccent,), onPressed: (){}),
                Text('231', style: TextStyle(color: Colors.blueAccent),),
                IconButton( padding: EdgeInsets.only(top: 8),icon: Icon(FontAwesomeIcons.thumbsDown,color: Colors.red,),onPressed: (){}),
                Text('50', style: TextStyle(color: Colors.pinkAccent),),
                IconButton(padding: EdgeInsets.only(top: 8),icon: Icon(FontAwesomeIcons.commentAlt), onPressed: (){}),
                ]
            )
          ],
          
        ),
        onTap: (){},
        
      ),
      
    );
  }
}