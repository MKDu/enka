import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'PickUpOrderSummary.dart';

class OrderTracker extends StatefulWidget {
  _OrderTracker createState() => _OrderTracker();
}

class _OrderTracker extends State<OrderTracker> {
  @override
  Widget build(BuildContext context) {
    final screenSizeWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.grey),
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      }),
                ),
                Expanded(
                    flex: 16,
                    child: Center(
                        child: Text('Order',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 24))))
              ],
            ),
            Container(height: 2, color: Color(0xFFD3D3D3)),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                  width: screenSizeWidth,
                  child: Column(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('TGIF',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 28)),
                            Row(children: <Widget>[
                              Image.asset('assets/Star 7.png'),
                              Text('Rating',
                                  style: TextStyle(fontFamily: 'Montserrat'))
                            ])
                          ]),
                      Row(children: <Widget>[
                        Text('American, Steaks, Burgers',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Color(0xFFAFAFAF)))
                      ]),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    child: Row(children: <Widget>[
                                  Image.asset("assets/Peso.png"),
                                  Image.asset("assets/Peso.png"),
                                  Image.asset("assets/UnPeso.png"),
                                ])),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    child: Text('2.5km',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal))),
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
                    ],
                  )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('Details',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22,
                      fontWeight: FontWeight.w600)),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/Destination.png'),
                        SizedBox(width: 5),
                        Text('Serendra')
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('See Location',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFE9A034)))),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/Union.png'),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.5),
                          child: Text('April 28'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.5),
                          child: Text('4:35pm'),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('See Location',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFE9A034)))),
                ]),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Tracker',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22,
                      fontWeight: FontWeight.w600)),
            ),
            Row(
              children: <Widget>[
                Container(
                    height: 200,
                    width: screenSizeWidth * 0.3,
                    child: FlareActor("assets/Tracker.flr",
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        animation: "Untitled")),
                Container(
                  height: 200,
                  width: screenSizeWidth * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Text('Restaurant received your Order',
                            style: TextStyle(fontFamily: 'Montserrat')),
                      ),
                      Text('Your Order will arrive in 20 mins',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xFFAFAFAF))),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 4),
                        child: Text('Restaurant received your Order',
                            style: TextStyle(fontFamily: 'Montserrat')),
                      ),
                      Text('Your Order will arrive in 20 mins',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xFFAFAFAF))),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                        child: Text('Restaurant received your Order',
                            style: TextStyle(fontFamily: 'Montserrat')),
                      ),
                      Text('Your Order will arrive in 20 mins',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xFFAFAFAF))),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                        child: Text('Restaurant received your Order',
                            style: TextStyle(fontFamily: 'Montserrat')),
                      ),
                      Text('Your Order will arrive in 20 mins',
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Color(0xFFAFAFAF)))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
              child: Text('Order Summary',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
            ),
            Container(
              height: 140,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Text('1',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600)))),
                        Expanded(
                            flex: 4,
                            child: Text('Umami Fried Chicken',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500))),
                        Expanded(
                            flex: 2,
                            child: Row(
                              children: <Widget>[
                                Image.asset('assets/UnPeso.png'),
                                Text('   249.00')
                              ],
                            )),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Container(
                        padding: EdgeInsets.all(15),
                        child: Text('Subtotal',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500)))),
                Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/UnPeso.png'),
                        Text('   249.00')
                      ],
                    ))
              ],
            ),
            Row(children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                      padding: EdgeInsets.all(15),
                      child: Text('Shipping Fee',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500)))),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/UnPeso.png'),
                      Text('   249.00')
                    ],
                  ))
            ]),
            Row(children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                      padding: EdgeInsets.all(15),
                      child: Text('Discount',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500)))),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/UnPeso.png'),
                      Text('   249.00')
                    ],
                  ))
            ]),
            Container(height: 2, color: Color(0xFFD3D3D3)),
            Row(children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                      padding: EdgeInsets.all(15),
                      child: Text('Total',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500)))),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/Peso.png'),
                      Text('   249.00')
                    ],
                  ))
            ]),
            SizedBox(height: 20),
            Container(height: 10, color: Color(0xFFAFAFAF)),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Previous Orders',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22,
                      fontWeight: FontWeight.w600)),
            ),
            RestoCard(context),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 0),
              child: Container(height: 2, color: Color(0xFFAFAFAF)),
            ),
            RestoCard(context),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 0),
              child: Container(height: 2, color: Color(0xFFAFAFAF)),
            ),
            RestoCard(context),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 0),
              child: Container(height: 2, color: Color(0xFFAFAFAF)),
            ),
          ])))),
    );
  }
}

Widget RestoCard(BuildContext context) {
  return Container(
      child: Column(children: <Widget>[
    Padding(
        padding: EdgeInsets.symmetric(vertical: 2.5, horizontal: 10),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Bad Bird',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  )),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('April 28',
                        style: TextStyle(fontFamily: 'Montserrat')),
                    SizedBox(width: 10),
                    Text('4:35 pm', style: TextStyle(fontFamily: 'Montserrat')),
                  ])
            ])),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Image.asset('assets/Destination.png'),
        SizedBox(width: 5),
        Text('Serendra',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Color(0xFFC43636),
            )),
      ]),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                child: Text('Total',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500))),
            Row(children: <Widget>[
              Image.asset('assets/UnPeso.png'),
              SizedBox(width: 5),
              Text('249.00')
            ])
          ]),
    ),
  ]));
}
