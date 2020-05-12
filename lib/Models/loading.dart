import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitWave(
      color: Color.fromRGBO(143, 148, 251, 1),
      size: 50.0,
      ),
    );
  }
}