import 'package:Snap/Registration/login.dart';
import 'package:Snap/Registration/signup.dart';
import 'package:Snap/ScreenUI/MainScreen/profilePage.dart';
import 'package:flutter/material.dart';


class Routing{
  static Route<dynamic> routeting(RouteSettings settings){
    switch (settings.name){
      case '/login':
      return MaterialPageRoute(builder: (context) => LoginPage());
      break;

      case '/Profile':
      return MaterialPageRoute(builder: (context) => ProfilePage());
      break;

      case '/Signup':
      return MaterialPageRoute(builder: (context) =>SignupPage());
      break;

      default:
      return MaterialPageRoute(builder: (context) => LoginPage());

    }

  }
}