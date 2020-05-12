//import 'package:firebase_auth/firebase_auth.dart';
//import'package:Snap/Models/Usermodels.dart';

//class FireBaseUser{

  //final FirebaseAuth _auth = FirebaseAuth.instance;

   //Model _userFromFireBaseUser(FirebaseUser user) {
    //if the FireBaseUser user parameter is not null, then assign the uid of that user to _userFromFireBaseUser
    //return user != null
      //  ? Model(
        //    uid: user.uid,
          //  email: user.email,
         // )
        //: null;
  //}
   //Stream<Model> get authState {
    //map out the stream and get the properties of the user from the database and passes it to the user object
//    return _auth.onAuthStateChanged.map(_userFromFireBaseUser);}

  // Future<Model> signIn(String email, String password) async {
    //try {
      ///calling the built in sign func of FirebaseAuth using email and password as parameters
      //AuthResult result = await _auth.signInWithEmailAndPassword(
        //  email: email, password: password);
      //FirebaseUser user = result.user;
      ///the user property of result is then passed to _userFromFireBaseUser as its parameter
      //return _userFromFireBaseUser(user);
    //} catch (e) {
      //print(e.toString());
      //return null;}}}