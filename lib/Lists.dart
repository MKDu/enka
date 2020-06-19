import 'package:flutter/material.dart';
import 'OrderScreen.dart';

Widget ShortCard(BuildContext context) {
  return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderScreen()));}, child: Card(
                elevation: 5,
                child: Container(
                    height: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset('assets/Rectangle.png',
                              width: MediaQuery.of(context).size.width * 0.50),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('TGI Fridays',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18)),
                                    Spacer(),
                                    Container(
                                        child: Row(children: <Widget>[
                                      Text('4.8',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal)),
                                      Image.asset('assets/Star 7.png')
                                    ]))
                                  ])),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                        child: Text('2.5km',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                fontWeight:
                                                    FontWeight.normal))),
                                    ImageIcon(
                                      AssetImage("assets/Destination.png"),
                                      color: Colors.red,
                                    ),
                                    Text('Bonifacio High Street',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal))
                                  ])),
                          SizedBox(height: 29),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text('American, Steaks, Burgers')
                                  ]))
                        ]))));
          }));
}

Widget fullCard(BuildContext context) {
  return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, i) {
            return GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderScreen()));}, child: Card(
                elevation: 5,
                child: Container(
                    height: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset('assets/Rectangle.png',
                              width: MediaQuery.of(context).size.width),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('TGI Fridays',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18)),
                                    Spacer(),
                                    Container(
                                        child: Row(children: <Widget>[
                                          Text('4.8',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal)),
                                          Image.asset('assets/Star 7.png')
                                        ]))
                                  ])),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
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
                                        child: Text('2.5km',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                fontWeight:
                                                FontWeight.normal))),
                                    ImageIcon(
                                      AssetImage("assets/Destination.png"),
                                      color: Colors.red,
                                    ),
                                    Text('Bonifacio High Street',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal))
                                  ])),
                          SizedBox(height: 29),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text('American, Steaks, Burgers')
                                  ]))
                        ]))));
          }));
}

