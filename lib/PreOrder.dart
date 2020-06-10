import 'package:flutter/material.dart';

class PreOrder extends StatefulWidget {
  _PreOrder createState() => _PreOrder();
}

class _PreOrder extends State<PreOrder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Card(
                        elevation: 5,
                        child: Container(height: double.infinity, child: Column(children: <Widget>[
                          Image.asset('assets/Rectangle.png'),
                          Container( width: MediaQuery.of(context).size.width*0.5, child: Row(
                              mainAxisSize:MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('TGI Fridays'),
                                Container(
                                    child: Row(children: <Widget>[
                                  Text('4.8'),
                                  Image.asset('assets/Star 7.png')
                                ]))
                              ])),
                          Row(
                              children: <Widget>[
                                Container(
                                    child: Row(children: <Widget>[
                                  Image.asset("assets/Peso.png"),
                                  Image.asset("assets/Peso.png"),
                                  Image.asset("assets/UnPeso.png"),
                                ])),
                                Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    child: Text('2.5km')),
                                ImageIcon(
                                  AssetImage("assets/Destination.png"),
                                  color: Colors.red,
                                ),
                                Text('Bonifacio High Street')
                              ]),
                          Align(alignment: Alignment.bottomCenter, child: Text('American, Steaks, Burgers'))
                        ])));
              })),
      Text('Order Again')
    ]);
  }
}
