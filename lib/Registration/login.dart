//import 'package:Snap/Models/loading.dart';
import 'package:Snap/Registration/signup.dart';
import 'package:Snap/ScreenUI/BottomNav.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginPage extends StatefulWidget{
  @override
_LoginPageState createState() => _LoginPageState();

}
class _LoginPageState extends State<LoginPage> {
final color= Colors.white;
//final _formkey = GlobalKey<FormState>();
//String _password, _email;
bool loading = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
      body://loading == false
       SingleChildScrollView(
      child: Column(
        children: <Widget>[
         Container( 
           padding: EdgeInsets.only(bottom: 270 ),
           decoration:BoxDecoration(
            color: Colors.black,
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(200),
               ),
           ),
           ),
           SizedBox(height:30),
           Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: <Widget>[
                    Text("LOGIN", style: TextStyle(fontWeight:
                    FontWeight.bold, fontSize: 30,
                    color: Colors.black)),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height:10),
          Form(
            child:Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20,right:20),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.black),
                    contentPadding: EdgeInsets.only(left: 30,right: 30),
                    focusedBorder: OutlineInputBorder(
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.black,width:2.0)
                    ),
                    hintText: "Enter email or username"
                  ),
                ),
              ),
           SizedBox(height:15),
          Padding(
            padding: const EdgeInsets.only(left:20,right:20),
            child: TextFormField(
                 autofocus: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 30,right: 30),
                      focusedBorder: OutlineInputBorder(
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.black,width:2.0)
                      ),
                      hintText: "Password"
                    ),
                    obscureText: true,
                    ),
          ),],),),
                  new FlatButton(
                    onPressed: (){}, 
                    child: Text("Forgot Password?", style: TextStyle(color:Colors.black
                    ,),)),
          SizedBox(height:20),
           Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
    FlatButton(
      padding:EdgeInsets.only(left: 125,right:125,bottom: 18,top: 18),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.white)),
      color: Colors.lightBlueAccent,
      textColor: Colors.white,
      onPressed: (){Navigator.push(context, 
       MaterialPageRoute(builder: (context) => MainScreen()));},
      child: Text(
        "login".toUpperCase(),
        style: TextStyle(
          fontSize: 17.0,
        ),
      )
      )
      ]),
      SizedBox(height:13),
      Column(
        children: <Widget>[
          Text("Create Account",style: TextStyle(
           color: Colors.black,)),         
           new FlatButton(onPressed: (){
            Navigator.pushNamed(context, '/Signup');
           },
            child: Text(" Sign Up",style: TextStyle(
           color: Colors.lightBlueAccent , fontWeight: FontWeight.bold),),)
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: IconButton(
              icon:FaIcon(FontAwesomeIcons.facebook,
               size: 35, color:Colors.blue), 
             onPressed: (){}),
          ),
          Container(
            padding: EdgeInsets.only(left:10),
            child: IconButton(
              icon: Icon(FontAwesomeIcons.twitter,
              size: 35, color: Colors.lightBlueAccent,),
              onPressed: (){ print('twitter login');},)
          ),
           Container(
            padding: EdgeInsets.only(left:10),
            child: IconButton(
              icon: Icon(FontAwesomeIcons.google,
              size: 33, color: Colors.redAccent,),
              onPressed: (){ print('');},)
          )
        ],
      )
         ],
         ),
       )
      //:Loading()
      )
      ),
    );
  }
}