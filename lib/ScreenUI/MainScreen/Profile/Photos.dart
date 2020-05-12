import 'dart:math';
import 'package:flutter/material.dart';

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
   static Random random = Random();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                primary: false,
                padding: EdgeInsets.all(5),
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 200 / 200,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Image.asset(
                      "images/Cm${random.nextInt(10)}.jpeg",
                      fit: BoxFit.cover,
                    ),
                  );
                },
    );
  }
}