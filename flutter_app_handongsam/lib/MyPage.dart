import 'package:flutter/material.dart';
import 'record.dart' as variable;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Mypages extends StatefulWidget {
  @override
  _MypageState createState() => new _MypageState();
}

class _MypageState extends State<Mypages> {
  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 10, 30, 107),
        brightness: Brightness.light,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.white),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            color: Colors.white,
            onPressed: () {
              _googleSignIn.signOut();
              Navigator.of(context).pushNamed('/login');
            },
          ),
        ],
      ),
      backgroundColor:  Colors.white,
      body: Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Image(
                image: NetworkImage(variable.user.photoUrl),
                width: 300, height: 300,
              ),

              SizedBox(height: 5.0,),

              Divider(height: 1.0,
                  color: Colors.white),

              SizedBox(height: 6.0,),

            ],
          )
      ),
    );
  }

}