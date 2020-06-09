import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'DrawerScreen.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget> [
          DrawerScreen(),
          HomeScreen(),]

      )
    );
  }
}