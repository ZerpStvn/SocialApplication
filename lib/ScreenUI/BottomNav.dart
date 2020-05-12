import 'package:Snap/ScreenUI/MainScreen/ChatPage.dart';
import 'package:Snap/ScreenUI/MainScreen/cameraSnap.dart';
import 'package:Snap/ScreenUI/MainScreen/homepage.dart';
import 'package:Snap/ScreenUI/MainScreen/notification.dart';
import 'package:Snap/ScreenUI/MainScreen/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[
          HomePageUI(),
          ChatPage(),
          CameraSnap(),
          NotificationUI(),
          ProfilePage(),
        ],
      ),

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Theme.of(context).primaryColor,
          primaryColor: Theme.of(context).accentColor,
          textTheme: Theme
              .of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.grey[500]),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
           backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
           
             BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.clone, color: Colors.black,),
            title: Text("Topics",style:TextStyle(color:Colors.black),)),
             BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.commentAlt, color: Colors.black,),
            title: Text("Chat",style:TextStyle(color:Colors.black),)),
             BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cameraRetro, color: Colors.black,),
            title: Text("Snap", style:TextStyle(color:Colors.black),)),
             BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bell, color: Colors.black),
            title: Text("Nofication",style:TextStyle(color:Colors.black),)),
             BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user, color: Colors.black),
            title: Text("Profile",style:TextStyle(color:Colors.black),) ),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),

    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}