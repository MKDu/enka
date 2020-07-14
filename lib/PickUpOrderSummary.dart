import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'OrderTracker.dart';

class PickUpSummary extends StatefulWidget {
  _PickUpSummary createState() => _PickUpSummary();
}

class _PickUpSummary extends State<PickUpSummary> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
      child: Column(children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
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
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Bad Bird',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/Destination.png'),
                            SizedBox(width: 5),
                            Text('Serendra',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFFC43636),
                                )),
                            SizedBox(width: 5),
                            Text('2.5km',
                                style: TextStyle(fontFamily: 'Montserrat')),
                            SizedBox(width: 5),
                            Text('10 minutes away',
                                style: TextStyle(fontFamily: 'Montserrat')),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/Union.png'),
                              SizedBox(width: 5),
                              Text('Ready in 20 minutes',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                  ))
                            ]),
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
        SizedBox(height: 10),
        Container(height: 10, color: Color(0xFFD3D3D3)),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              SizedBox(height: 10),
              Text('Order Summary',
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Row(
                      children: <Widget>[
                        Expanded(flex: 2, child: ListTileItem()),
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
              SizedBox(height: 10),
              Container(height: 8, color: Color(0xFFD3D3D3)),
              SizedBox(height: 10),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                           flex: 2,
                            child: Text('Contact Information',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text('klgz2001@gmail.com',
                                      style: TextStyle(fontFamily: 'Montserrat')),
                                ]),
                          ),Icon(Icons.arrow_forward_ios,
                              color: Color(0xFFE9A034))
                        ],
                      ),
                    ),
                    Container(height: 2, color: Color(0xFFD3D3D3)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex:2,
                            child: Text('Pick Up Time',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text('April 28',
                                      style: TextStyle(fontFamily: 'Montserrat')),
                                  Text('4:35 pm',
                                      style: TextStyle(fontFamily: 'Montserrat')),

                                ]),
                          ), Icon(Icons.arrow_forward_ios,
                              color: Color(0xFFE9A034))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:4.0, horizontal: 8.0),
                      child: Text(
                          'This restaurant is available for reservation at this time',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xFFAFAFAF),
                              fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:4.0, horizontal: 8.0),
                      child: Text('Reserve Restaurant now',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xFFE9A034),
                              fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                      child: Container(height: 2, color: Color(0xFFD3D3D3)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex:2,
                            child: Text('Payment Option',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text('G Cash',
                                      style: TextStyle(fontFamily: 'Montserrat')),

                                ]),
                          ), Icon(Icons.arrow_forward_ios,
                              color: Color(0xFFE9A034))
                        ],
                      ),
                    ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
                          child: Container(width: MediaQuery.of(context).size.width, height: 8, color: Color(0xFFD3D3D3)),
                        ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:4.0, horizontal: 8.0),
                      child: Text(
                          'This restaurant is available for reservation at this time',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xFFAFAFAF),
                              fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                      child: Center(
                        child: Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            height: 40,
                            child: RaisedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderTracker()));
                                },
                                color: Color(0xFFE9A034),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        15.0),
                                    side: BorderSide(
                                        color:
                                        Color(0xFFFFB343))),
                                child: Text(
                                  'Send Order',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ))
                        ),
                      ),
                    )
                      ],
                    )
              ],
                ),

          ],
        )),
            ),
        ),
    );
  }
}

class ListTileItem extends StatefulWidget {
  String title;

  ListTileItem({this.title});

  @override
  _ListTileItemState createState() => new _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4),
            child: new GestureDetector(
                onTap: () => setState(
                      () => _itemCount--,
                    ),
                child: Icon(Icons.remove, color: Color(0xFFE9A034), size: 28)),
          ),
          new Text(_itemCount.toString(),
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
          Container(
            padding: EdgeInsets.all(4),
            child: new GestureDetector(
                onTap: () => setState(
                      () => _itemCount++,
                    ),
                child: Icon(Icons.add, color: Color(0xFFE9A034), size: 28)),
          )
        ],
      ),
    );
  }
}
