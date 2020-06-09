import 'package:flutter/material.dart';
import 'LogIn.dart';
import 'SignUp.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: Column(children: <Widget>[
      Expanded(
          flex: 4,
          child: Container(
              child: Image.asset('assets/Artboard.png', fit: BoxFit.fill),
              width: MediaQuery.of(context).size.width)),
      Expanded(
          flex: 1,
          child: Container(
              child: Column(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: RaisedButton(
                    color: Color(0xFFFFB343),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));},
                    child: Text('Sign Up',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.white)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));},
                    child: Text('Log In',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xFFFFB343))),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Color(0xFFFFB343))),
                  ))
            ],
          )))
    ]))));
  }
}
