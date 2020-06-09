import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xFFFFC166),
        body: Container(
          padding: EdgeInsets.fromLTRB(45,90,0,70),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
                children: <Widget>[
                  Align(alignment: Alignment.topLeft,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget>[
                        Text('Name', style: TextStyle(fontFamily: 'Montserrat', fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text('Profile', style: TextStyle(fontFamily: 'Montserrat', fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600)),
                            SizedBox(height: 10),
                        Text('My Address', style: TextStyle(fontFamily: 'Montserrat', fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600)),
                            SizedBox(height: 10),
                        Text('Payment Methods', style: TextStyle(fontFamily: 'Montserrat', fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600)),
                      ])),
                  SizedBox( height: MediaQuery.of(context).size.height*0.50),
                  Align(alignment: Alignment.bottomLeft, child: Text('Log Out', style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600)))
                ]
            ))
    );
  }
}