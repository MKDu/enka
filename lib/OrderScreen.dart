import 'package:flutter/material.dart';
import 'OrderBody.dart';
class OrderScreen extends StatefulWidget {
  _OrderScreen createState() => _OrderScreen();
}

class _OrderScreen extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;

    return Scaffold(
            body: DefaultTabController(
              length: 5,
              child: NestedScrollView(
                  headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverAppBar(
                          backgroundColor: Colors.white,
                          expandedHeight: 200,
                          floating: true,
                          pinned: true,
                          snap: false,
                          flexibleSpace: FlexibleSpaceBar(
                              centerTitle: true,
                              title: Container(
                                  child: Column(children: <Widget>[
                                    Container(
                                        width: MediaQuery.of(context).size.width,
                                        child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text('TGI Fridays',
                                                  style: TextStyle(
                                                      fontFamily: 'Montserrat',
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 18)),
                                              Spacer(),
                                              Container(
                                                  child: Row(children: <Widget>[
                                                    Text('4.8',
                                                        style: TextStyle(
                                                            fontFamily: 'Montserrat',
                                                            fontSize: 12,
                                                            color: Colors. black,
                                                            fontWeight: FontWeight.normal)),
                                                    Image.asset('assets/Star 7.png')
                                                  ]))
                                            ]))
                                  ]))),

                          bottom: TabBar(
                              isScrollable: true,
                              labelColor: Color(0xFFFFC166),
                              tabs: <Widget>[
                                Text('Chicken'),
                                Text('Plates'),
                                Text('Pastas'),
                                Text('Beverage'),
                                Text('Desserts')
                              ])),
                    ];
                  },
                  body: TabBarView(children: <Widget>[
                    Body(),Body(), Body(), Body(), Body()
                  ])),
            ));
  }
}
