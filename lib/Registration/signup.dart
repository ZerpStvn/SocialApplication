import 'package:Snap/Models/Usermodels.dart';
import 'package:Snap/Registration/login.dart';
import 'package:flutter/material.dart';
import 'package:Snap/Registration/InputUser.dart';


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
  }
  

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  Model model = Model ();
  bool loading = false;

  get validator => null;

  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;

    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        elevation: 0,
       backgroundColor: Colors.white,
       leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: (){Navigator.push(context, 
       MaterialPageRoute(builder: (context) => LoginPage()));}),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("SignUp".toUpperCase(),style: TextStyle(color: Colors.black),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top:70),
          child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Row(
                      children: <Widget>[
                        Text("Creat your account".toUpperCase(),
                  style: TextStyle(color: Colors.black
                  ,fontSize: 20,fontWeight: FontWeight.bold)
                  ),
            
                   ], 
                    ),
                    ),
                    SizedBox(height: 10,),
                     Form(
                    key: _formKey,
                   child: Column( 
                     children: <Widget>[
                        Container(
                         alignment: Alignment.topCenter,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: halfMediaWidth,
                              child: MyTextFormField(
                                hintText: 'First name',
                                validator: (String value){
                                  if (value.isEmpty){
                                    return 'Enter your first name';
                                  }else return null;
                                },
                                onSaved: (String value){
                                  model.firstName = value;
                                },
                              ),
                            ),
                             Container(
                               alignment: Alignment.topCenter,
                              width: halfMediaWidth,
                              child: MyTextFormField(
                                hintText: 'Last name',
                                validator: (String value){
                                  if (value.isEmpty){
                                    return 'Enter your last name';
                                  }else return null;
                                },
                                onSaved: (String value){
                                  model.lastName = value;
                                },
                              ),
                            ),
                          ],
                          ),
                           ),
                           SizedBox(height: 10,),
                             Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.topCenter,
                                  padding: EdgeInsets.only(left:5,right:5),
                                  child: MyTextFormField(
                                   hintText: 'Username: @example',
                                   isEmail: true,
                                   validator: (String value){}, 
                                   onSaved: (String value){
                                     model.uid = value;
                                   },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                              Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.topCenter,
                                  padding: EdgeInsets.only(left:5,right:5),
                                  child: MyTextFormField(
                                   hintText: 'Email',
                                   isEmail: true,
                                   validator: (String value){
                                     if(!validator.isEmail(value)){
                                       return'Enter a valid email address';
                                     } return null;
                                   }, 
                                   onSaved: (String value){
                                     model.email = value;
                                   },
                                  ),
                                ),
                              ],
                            ),
                           
                            SizedBox(height: 10,),
                            Row(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.topCenter,
                                  width: halfMediaWidth,
                                  child: MyTextFormField(
                                   hintText: 'Password',
                                   isPassword: true,
                                   validator: (String value){
                                     if(value.length < 6 ){
                                       return'Atleast 6 characters';
                                     } 
                                     _formKey.currentState.save();
                                     return null;
                                   }, 
                                   onSaved:  
                                   (String value)
                                   {
                                     model.password = value;
                                        },
                                      ),
                                     ),
                                     SizedBox(height: 10,),
                            Container(
                              alignment: Alignment.topCenter,
                              width: halfMediaWidth,
                              child: MyTextFormField(
                               hintText: ' Confirm Password',
                               isPassword: true,
                               validator: (String value){
                                 if(value.length < 6 ){
                                   return'Atleast 6 characters';
                                 } 
                                else if (model.password != null && 
                                value != model.password){
                                  print(value);
                                  print(model.password);
                                  return 'Password not matched';
                                }
                                return null;
                               }, 
                                onSaved:  
                                   (String value)
                                   {
                                     model.password = value;
                                        },
                                  ),
                                 ),
                              ],
                            ),
                            SizedBox(height:40),
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
                                         onPressed: (){
                                           if (_formKey.currentState.validate()){
                                             _formKey.currentState.save();
                                             Navigator.push(
                                               context, MaterialPageRoute(builder: (context)
                                               => LoginPage()
                                             ));
                                           }
                                         },
                                        child: Text(
                                  "SignUp".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 17.0,
                                      ),
                                ))]),
                        ],
                     ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}