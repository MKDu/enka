import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor),
        duration: Duration(milliseconds: 250),
        child: MaterialApp(
        home: DefaultTabController(
        length: 2,
        child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        leading: isCollapsed ? IconButton(
            icon: Icon(Icons.person, color: Colors.grey),
            onPressed: () {
              setState(() {
                xOffset = 230;
                yOffset=MediaQuery.of(context).size.width*0.2;
                scaleFactor = 0.8;
                isCollapsed=false;
              }
              );
            }) : IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors
        .grey), onPressed: (){setState((){xOffset=0;yOffset=0; scaleFactor=1;isCollapsed=true;});}),
    title: Row(children: <Widget>[
    Expanded(
    flex: 1,
    child: Text('Address: ',
    style: TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.black))),
    Expanded(
    flex: 2,
    child: Text('Location',
    style: TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Color(0xFFE9A034))))
    ]),
    actions: <Widget>[
    IconButton(
    icon: Icon(Icons.search, color: Colors.grey),
    onPressed: () {}),
    IconButton(
    icon: Icon(Icons.menu, color: Colors.grey),
    onPressed: () {})
    ],
    bottom: TabBar(tabs: <Widget>[
    Text('Pick Up',
    style: TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: Color(0xFFE9A034))),
    Text('Pre Order',
    style: TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: Color(0xFFE9A034)))
    ]))))));
    }
  }
