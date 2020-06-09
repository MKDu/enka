import 'package:flutter/material.dart';

class PreOrder extends StatefulWidget {
  _PreOrder createState() => _PreOrder();
}

class _PreOrder extends State<PreOrder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Column(children: <Widget>[
          Container(width: MediaQuery.of(context).size.width*0.5, child:
      Card(
          elevation: 5,
          child: Column(children: <Widget>[
            Image.asset('assets/Rectangle.png'),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('TGI Fridays'),
                  Container(
                      child: Row(children: <Widget>[
                    Text('4.8'),
                    Image.asset('assets/Star 7.png')
                  ]))
                ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Container(child: Row(children:<Widget>[Image.asset(
                  "assets/Peso.png"
                ),
          Image.asset(
              "assets/Peso.png"
          ),
          Image.asset(
          "assets/UnPeso.png"
      ),])),
                  Container(padding: EdgeInsets.symmetric(horizontal: 4), child:Text('2.5km')),
                ImageIcon(
                  AssetImage("assets/Destination.png"), color: Colors.red,
                ),
                Text('Bonifacio High Street')
              ]
            ),
            SizedBox(height:10),
            Text('American, Steaks, Burgers')
          ]))),
      Text('Order Again')
    ]));
  }
}
