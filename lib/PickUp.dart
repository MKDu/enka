import 'package:flutter/material.dart';
import 'Lists.dart';

class PickUp extends StatefulWidget {
  _PickUp createState()=> _PickUp();
}

class _PickUp extends State<PickUp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(child: Column(children: <Widget>[
      ShortCard(context),
      Align(alignment: Alignment.centerLeft, child: Text('Order Again', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 18))),
      ShortCard(context),
      Align(alignment: Alignment.centerLeft, child: Text('Popular', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 18))),
      ShortCard(context),
      Align(alignment: Alignment.centerLeft, child: Text('Recommended' , style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 18))),
      ShortCard(context),
      Align(alignment: Alignment.centerLeft, child: Text('All Restaurants' , style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 18))),
      fullCard(context)
    ]));
  }
}